
import Foundation

class SinglyLinkedListNode {
    var data : Int!
    var next : SinglyLinkedListNode?
    init(data:Int){
        self.data = data
        self.next = nil
    }
}

func condence(head:SinglyLinkedListNode?) -> SinglyLinkedListNode?{
    var newHead1:SinglyLinkedListNode? = head
    var newHead2:SinglyLinkedListNode? = nil
    
    while newHead1 != nil && newHead1?.next != nil{
        newHead2 = newHead1
        while newHead2 != nil {
            if newHead1?.data == newHead2?.next?.data {
                newHead2?.next = newHead2?.next?.next
            }else {
                newHead2 = newHead2?.next
            }
        }
        newHead1 = newHead1?.next
    }
    return head
    
}



func showLinkedListNode(head:SinglyLinkedListNode?){
    var showData : SinglyLinkedListNode?  = head
    while showData != nil {
        print("\(showData?.data ?? 0)")
        showData = showData?.next
    }
}
