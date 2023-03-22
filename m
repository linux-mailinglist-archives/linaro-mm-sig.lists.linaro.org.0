Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CC38B6C431B
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Mar 2023 07:24:35 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D8B763ED7B
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Mar 2023 06:24:34 +0000 (UTC)
Received: from www262.sakura.ne.jp (www262.sakura.ne.jp [202.181.97.72])
	by lists.linaro.org (Postfix) with ESMTPS id 42C613EBC6
	for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Mar 2023 04:26:36 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=none (lists.linaro.org: domain of penguin-kernel@I-love.SAKURA.ne.jp has no SPF policy when checking 202.181.97.72) smtp.mailfrom=penguin-kernel@I-love.SAKURA.ne.jp;
	dmarc=none
Received: from fsav411.sakura.ne.jp (fsav411.sakura.ne.jp [133.242.250.110])
	by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id 32M4PHDa005049;
	Wed, 22 Mar 2023 13:25:17 +0900 (JST)
	(envelope-from penguin-kernel@I-love.SAKURA.ne.jp)
Received: from www262.sakura.ne.jp (202.181.97.72)
 by fsav411.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav411.sakura.ne.jp);
 Wed, 22 Mar 2023 13:25:17 +0900 (JST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/fsav411.sakura.ne.jp)
Received: from [192.168.1.6] (M106072142033.v4.enabler.ne.jp [106.72.142.33])
	(authenticated bits=0)
	by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTPSA id 32M4PHtS005046
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NO);
	Wed, 22 Mar 2023 13:25:17 +0900 (JST)
	(envelope-from penguin-kernel@I-love.SAKURA.ne.jp)
Message-ID: <3912432e-bdf7-323a-03c6-46bb1e288b54@I-love.SAKURA.ne.jp>
Date: Wed, 22 Mar 2023 13:25:18 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: syzbot <syzbot+a9a2bb6afe9eb31efc56@syzkaller.appspotmail.com>,
        syzkaller-bugs@googlegroups.com,
        Andrew Morton <akpm@linux-foundation.org>,
        Lorenzo Stoakes <lstoakes@gmail.com>
References: <0000000000006dc0c105f76c0a72@google.com>
From: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
In-Reply-To: <0000000000006dc0c105f76c0a72@google.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spam-Level: *
X-Rspamd-Queue-Id: 42C613EBC6
X-Spamd-Result: default: False [1.40 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	FORGED_RECIPIENTS(2.00)[m:syzbot+a9a2bb6afe9eb31efc56@syzkaller.appspotmail.com,m:syzkaller-bugs@googlegroups.com,m:akpm@linux-foundation.org,m:lstoakes@gmail.com,m:bhe@redhat.com,m:david@redhat.com,m:jolsa@kernel.org,m:liushixin2@huawei.com,m:willy@infradead.org,m:urezki@gmail.com,m:syzbot@syzkaller.appspotmail.com,s:linaro-mm-sig@lists.linaro.org];
	SUSPICIOUS_RECIPS(1.50)[];
	URI_HIDDEN_PATH(1.00)[https://syzkaller.appspot.com/x/.config?x=f22105589e896af1];
	RCVD_IN_DNSWL_HI(-1.00)[133.242.250.110:received,106.72.142.33:received];
	AUTH_NA(1.00)[];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[a9a2bb6afe9eb31efc56];
	FREEMAIL_CC(0.00)[redhat.com,kernel.org,huawei.com,infradead.org,gmail.com];
	DMARC_NA(0.00)[sakura.ne.jp];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-0.959];
	R_SPF_NA(0.00)[no SPF record];
	ARC_NA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	SUBJECT_HAS_QUESTION(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:9370, ipnet:202.181.96.0/20, country:JP];
	FREEMAIL_TO(0.00)[syzkaller.appspotmail.com,googlegroups.com,linux-foundation.org,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Spamd-Bar: +
X-MailFrom: penguin-kernel@I-love.SAKURA.ne.jp
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: XWQRLVWIRDHY62SJHWBYU5CPPPKKJHSZ
X-Message-ID-Hash: XWQRLVWIRDHY62SJHWBYU5CPPPKKJHSZ
X-Mailman-Approved-At: Wed, 22 Mar 2023 06:22:24 +0000
CC: Baoquan He <bhe@redhat.com>, David Hildenbrand <david@redhat.com>, Jiri Olsa <jolsa@kernel.org>, Liu Shixin <liushixin2@huawei.com>, "Matthew Wilcox (Oracle)" <willy@infradead.org>, "Uladzislau Rezki (Sony)" <urezki@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [syzbot] [dri?] BUG: sleeping function called from invalid context in _vm_unmap_aliases
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XWQRLVWIRDHY62SJHWBYU5CPPPKKJHSZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Commit c53e98934f93 ("mm: vmalloc: use rwsem, mutex for vmap_area_lock and vmap_block->lock")
is broken. We can't take mutex (a sleeping lock) inside RCU read section (an atomic context).


@@ -2183,7 +2184,7 @@ static void _vm_unmap_aliases(unsigned long start, unsigned long end, int flush)

                rcu_read_lock();
                list_for_each_entry_rcu(vb, &vbq->free, free_list) {
-                       spin_lock(&vb->lock);
+                       mutex_lock(&vb->lock);
                        if (vb->dirty && vb->dirty != VMAP_BBMAP_BITS) {
                                unsigned long va_start = vb->va->va_start;
                                unsigned long s, e;
@@ -2196,7 +2197,7 @@ static void _vm_unmap_aliases(unsigned long start, unsigned long end, int flush)

                                flush = 1;
                        }
-                       spin_unlock(&vb->lock);
+                       mutex_unlock(&vb->lock);
                }
                rcu_read_unlock();
        }

#syz set subsystems: mm

On 2023/03/22 2:04, syzbot wrote:
> Hello,
> 
> syzbot found the following issue on:
> 
> HEAD commit:    f3594f0204b7 Add linux-next specific files for 20230321
> git tree:       linux-next
> console output: https://syzkaller.appspot.com/x/log.txt?x=161552eec80000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=f22105589e896af1
> dashboard link: https://syzkaller.appspot.com/bug?extid=a9a2bb6afe9eb31efc56
> compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2
> 
> Unfortunately, I don't have any reproducer for this issue yet.
> 
> Downloadable assets:
> disk image: https://storage.googleapis.com/syzbot-assets/0b755145006a/disk-f3594f02.raw.xz
> vmlinux: https://storage.googleapis.com/syzbot-assets/fca26e328a81/vmlinux-f3594f02.xz
> kernel image: https://storage.googleapis.com/syzbot-assets/39744d7d289f/bzImage-f3594f02.xz
> 
> IMPORTANT: if you fix the issue, please add the following tag to the commit:
> Reported-by: syzbot+a9a2bb6afe9eb31efc56@syzkaller.appspotmail.com
> 

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
