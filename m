Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sHpdO7sB4WmJoQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:35:23 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id E1B72410F3D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:35:22 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F0826445E6
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:35:21 +0000 (UTC)
Received: from invmail4.hynix.com (exvmail4.hynix.com [166.125.252.92])
	by lists.linaro.org (Postfix) with ESMTP id 326BF3F815
	for <linaro-mm-sig@lists.linaro.org>; Mon,  1 Dec 2025 07:18:35 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of byungchul@sk.com designates 166.125.252.92 as permitted sender) smtp.mailfrom=byungchul@sk.com;
	dmarc=none
X-AuditID: a67dfc5b-c2dff70000001609-83-692d41486292
Date: Mon, 1 Dec 2025 16:18:27 +0900
From: Byungchul Park <byungchul@sk.com>
To: Matthew Wilcox <willy@infradead.org>
Message-ID: <20251201071827.GA70324@system.software.com>
References: <20251002081247.51255-1-byungchul@sk.com>
 <20251002081247.51255-45-byungchul@sk.com>
 <20251119105312.GA11582@system.software.com>
 <aR3WHf9QZ_dizNun@casper.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aR3WHf9QZ_dizNun@casper.infradead.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Brightmail-Tracker: H4sIAAAAAAAAA02SbUxTZxTHfe597tPbjppr5+QO3OLqFjYcbDg+nET34pLF6zcz/KDbktnI
	jXQrxRRFWGLCpih2jkGXQiwvwTK6hncBCYidlWGxvsSCDDoDxWoHY6WSCK1vtbV3xsxvv5z/
	P7+ckxyWVtWTFFar3y8a9BqdmiiwIpRkzdi2JUP7/qm5JAgvl2Oo62wj4OloRTATLkdQNhDH
	8MTkkkHc4UJQPWqiYakrRiD4xz0EZn+AwKLtBIL5i1thMrKAwBaIURBwHkNQY/YgcNh/IHAj
	sBLGw4sE3OYfCYRG6yi420WgvtaE4HBTJ4HRYJSCqWoTBTO2WQw18wSqTydDbc1hCh7aWmRw
	tWkKQ9SfBfHGAnC1zslg+mczBrdvgoHgrInAzMhRBpbH/RSUnw1j6L6TCBw3N8DJhikC5xxu
	DOVPlhG4+m9TcKLrDAO+tjgDpbX3GRhr9WC44rqE4frZdgaaJ0cp8N/yMtBz7SoNkYpU8FT9
	xIC38m8E7XetidMjNhps4UUZjDkbqU9yhftlFVho6emjhLaGNiQ8fmRCQlllgo70HBSarywQ
	4VH4TyJUXcsQBizTMqGx+4BwZDjECD32dKHp3Dwl3Ax+KHS3HCfbN3yh2Jwr6rRFouG9j3Yr
	8qYrl/G+wdeLLWMfl6LZZCOSszyXzdtb/eQ5zw0ZKYkx9yZf7/DJJCZcGu/1PqSNiGVXc2/z
	C70bjUjB0pw1lW+/fIGROi9zOj4y3PFfX8kBf+P3DloqqbhBxI8fPc08C1bx7pMBLDHNpfPe
	2DwlSWkulf8txkpjeWKHv6zHaIlf4dbzzr4RSvLw3G05750M0c8WfZW/YPfiSsRZXtBaXtBa
	/tc2IroFqbT6onyNVpedmVei1xZn7inI70aJp7Udin7Zj+55coYQxyJ1kvISvKtVMZqiwpL8
	IcSztHq1Ul2cGClzNSXfiYaCrw0HdGLhEEplsTpZuTFyMFfF7dXsF78VxX2i4XlKsfKUUtQ8
	8XiJ8772zs6R6Bvu2L++rcKEHHfZ085s7t/DpH1a7ZFT/3yQs2bTul2bhCyS6VxheaniutM9
	8v3ayRWXnb+49Au/horOH+q9deer7OBSThyqjNt2ftbQa36rJnJqQCXboewbXptdxzWtubjl
	85S8CiZ9av3gg3XWVbs7v3mwMupT48I8TVY6bSjUPAXJGGhesAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA01Sa0xTZxjOd77vXOhWc8ZYOIFkP+rM0Igbi0ve3S8/1i8zW/ZvixpHM462
	tlzSYge6LVxkYFlYaVKILUxWY2VQELlFJCUVJ5s6xFIvbLMi2IGMW8IKCpR27ZZl/nnzvM/l
	zfPjFXByhE0TdHmFsjFPY1BxCqL48LXyTPpOpu7FR20quFXqI7AcriLQcMbDQVXncRaut7ci
	GF+uQvBw3Ymhoi9GYMM2xEN49XceYt4hBHV+GwZPdykDf3VEOZi9uITAPhHioH6mlMCi+xsE
	jiknDzOX1DA/3s9CLDjNwO2VOQTuUJSBkK8SwUadHk64ujhYHx7BUG+/juD7iSCGBx1xsXvo
	LgJvcxkHf1h7MARCm+DG8iIHl+3VHMz7GxhY6OCgqczLQqPThqD85BkO6ho7CfTdO8+DfzbC
	wJ06GwOtnR/AuHuKwFWri4n3i7vOpoKzvpyJjwcM2Nv6GVh1t/Dwy8k7BNwlW8A5HGBhstnB
	Q2QiC2JN+TDUOs1D8Fs7gfb5EfZtO6IPK2oIbenqZWjF6AZHPd95EF1fsyEaPlWOaYU1vl6c
	W8T0aNfn9NTVOY6uLd/kqHelidArLonWDmfSPkeQp0cHfuM/enW34vUc2aAzy8YX3sxWaIPW
	MCnof7bIMfpWCZpKtaAkQRJ3StODFiaBific1Oi9yycwJz4vjY2tYgsShBQxQ5rrfsmCFAIW
	XelS25ULbMLztGiQVn5s/8evFEEKDLTjhClZ7EfSja/Psv8KT0mXj4dIAmNxmzQWnWESR7GY
	Lp2OCgk6Kd7hV1clTuBnxM2Sr/cnxoqUjsfSjsfSjv/TTQi3oBRdnjlXozO8vMOk1xbn6Yp2
	fJaf24niP+n+MlJ7DoUD6kEkCkj1pNKXtV2XzGrMpuLcQSQJWJWiVBXFKWWOpviwbMz/1HjI
	IJsGUbpAVKnK9z+Ws5PFA5pCWS/LBbLxP5URktJK0KUv+gw379uqLT0/74vM9h47uLB1tDn7
	vVfozO0cbYqbS8uoqVnV7iI7B7aqf2iIXdsYOFK2J0N9f+Keb61Mv3tL4ea9ud1Lfx6RGw9W
	F+yvqZy/9u4bS/vMh4NVZv9X0U88PXseHTpREqhd2zSyt239Qv2Cfpf3Ftq/3R89P3nsiUm1
	ipi0mqxt2GjS/A2TVMQejwMAAA==
X-CFilter-Loop: Reflected
X-Spamd-Bar: -
X-MailFrom: byungchul@sk.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: K4TO2HB4EIA7NZXWWXDY6T5DWGV543WW
X-Message-ID-Hash: K4TO2HB4EIA7NZXWWXDY6T5DWGV543WW
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:07:27 +0000
CC: linux-kernel@vger.kernel.org, kernel_team@skhynix.com, torvalds@linux-foundation.org, damien.lemoal@opensource.wdc.com, linux-ide@vger.kernel.org, adilger.kernel@dilger.ca, linux-ext4@vger.kernel.org, mingo@redhat.com, peterz@infradead.org, will@kernel.org, tglx@linutronix.de, rostedt@goodmis.org, joel@joelfernandes.org, sashal@kernel.org, daniel.vetter@ffwll.ch, duyuyang@gmail.com, johannes.berg@intel.com, tj@kernel.org, tytso@mit.edu, david@fromorbit.com, amir73il@gmail.com, gregkh@linuxfoundation.org, kernel-team@lge.com, linux-mm@kvack.org, akpm@linux-foundation.org, mhocko@kernel.org, minchan@kernel.org, hannes@cmpxchg.org, vdavydov.dev@gmail.com, sj@kernel.org, jglisse@redhat.com, dennis@kernel.org, cl@linux.com, penberg@kernel.org, rientjes@google.com, vbabka@suse.cz, ngupta@vflare.org, linux-block@vger.kernel.org, josef@toxicpanda.com, linux-fsdevel@vger.kernel.org, jack@suse.cz, jlayton@kernel.org, dan.j.williams@intel.com, hch@infradead.org, djwong@kernel.org, dri-devel
 @lists.freedesktop.org, rodrigosiqueiramelo@gmail.com, melissa.srw@gmail.com, hamohammed.sa@gmail.com, harry.yoo@oracle.com, chris.p.wilson@intel.com, gwan-gyeong.mun@intel.com, max.byungchul.park@gmail.com, boqun.feng@gmail.com, longman@redhat.com, yunseong.kim@ericsson.com, ysk@kzalloc.com, yeoreum.yun@arm.com, netdev@vger.kernel.org, matthew.brost@intel.com, her0gyugyu@gmail.com, corbet@lwn.net, catalin.marinas@arm.com, bp@alien8.de, dave.hansen@linux.intel.com, x86@kernel.org, hpa@zytor.com, luto@kernel.org, sumit.semwal@linaro.org, gustavo@padovan.org, christian.koenig@amd.com, andi.shyti@kernel.org, arnd@arndb.de, lorenzo.stoakes@oracle.com, Liam.Howlett@oracle.com, rppt@kernel.org, surenb@google.com, mcgrof@kernel.org, petr.pavlu@suse.com, da.gomez@kernel.org, samitolvanen@google.com, paulmck@kernel.org, frederic@kernel.org, neeraj.upadhyay@kernel.org, joelagnelf@nvidia.com, josh@joshtriplett.org, urezki@gmail.com, mathieu.desnoyers@efficios.com, jiangshanlai@gmail.com, qiang
 .zhang@linux.dev, juri.lelli@redhat.com, vincent.guittot@linaro.org, dietmar.eggemann@arm.com, bsegall@google.com, mgorman@suse.de, vschneid@redhat.com, chuck.lever@oracle.com, neil@brown.name, okorniev@redhat.com, Dai.Ngo@oracle.com, tom@talpey.com, trondmy@kernel.org, anna@kernel.org, kees@kernel.org, bigeasy@linutronix.de, clrkwllms@kernel.org, mark.rutland@arm.com, ada.coupriediaz@arm.com, kristina.martsenko@arm.com, wangkefeng.wang@huawei.com, broonie@kernel.org, kevin.brodsky@arm.com, dwmw@amazon.co.uk, shakeel.butt@linux.dev, ast@kernel.org, ziy@nvidia.com, yuzhao@google.com, baolin.wang@linux.alibaba.com, usamaarif642@gmail.com, joel.granados@kernel.org, richard.weiyang@gmail.com, geert+renesas@glider.be, tim.c.chen@linux.intel.com, linux@treblig.org, alexander.shishkin@linux.intel.com, lillian@star-ark.net, chenhuacai@kernel.org, francesco@valla.it, guoweikang.kernel@gmail.com, link@vivo.com, jpoimboe@kernel.org, masahiroy@kernel.org, brauner@kernel.org, thomas.weissschuh@l
 inutronix.de, oleg@redhat.com, mjguzik@gmail.com, andrii@kernel.org, wangfushuai@baidu.com, linux-doc@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-i2c@vger.kernel.org, linux-arch@vger.kernel.org, linux-modules@vger.kernel.org, rcu@vger.kernel.org, linux-nfs@vger.kernel.org, linux-rt-devel@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v17 44/47] dept: introduce APIs to set page usage and use subclasses_evt for the usage
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/K4TO2HB4EIA7NZXWWXDY6T5DWGV543WW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [1.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[3272];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,skhynix.com,linux-foundation.org,opensource.wdc.com,dilger.ca,redhat.com,infradead.org,kernel.org,linutronix.de,goodmis.org,joelfernandes.org,ffwll.ch,gmail.com,intel.com,mit.edu,fromorbit.com,linuxfoundation.org,lge.com,kvack.org,cmpxchg.org,linux.com,google.com,suse.cz,vflare.org,toxicpanda.com,lists.freedesktop.org,oracle.com,ericsson.com,kzalloc.com,arm.com,lwn.net,alien8.de,linux.intel.com,zytor.com,linaro.org,padovan.org,amd.com,arndb.de,suse.com,nvidia.com,joshtriplett.org,efficios.com,linux.dev,suse.de,brown.name,talpey.com,huawei.com,amazon.co.uk,linux.alibaba.com,glider.be,treblig.org,star-ark.net,valla.it,vivo.com,l,baidu.com,lists.infradead.org,lists.linaro.org,lists.linux.dev];
	DMARC_NA(0.00)[sk.com];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[byungchul@sk.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_GT_50(0.00)[149];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.951];
	TAGGED_RCPT(0.00)[linaro-mm-sig,renesas];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,system.software.com:mid]
X-Rspamd-Queue-Id: E1B72410F3D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Nov 19, 2025 at 02:37:17PM +0000, Matthew Wilcox wrote:
> On Wed, Nov 19, 2025 at 07:53:12PM +0900, Byungchul Park wrote:
> > On Thu, Oct 02, 2025 at 05:12:44PM +0900, Byungchul Park wrote:
> > > False positive reports have been observed since dept works with the
> > > assumption that all the pages have the same dept class, but the class
> > > should be split since the problematic call paths are different depending
> > > on what the page is used for.
> > >
> > > At least, ones in block device's address_space and ones in regular
> > > file's address_space have exclusively different usages.
> > >
> > > Thus, define usage candidates like:
> > >
> > >    DEPT_PAGE_REGFILE_CACHE /* page in regular file's address_space */
> > >    DEPT_PAGE_BDEV_CACHE    /* page in block device's address_space */
> > >    DEPT_PAGE_DEFAULT       /* the others */
> >
> > 1. I'd like to annotate a page to DEPT_PAGE_REGFILE_CACHE when the page
> >    starts to be associated with a page cache for fs data.
> >
> > 2. And I'd like to annotate a page to DEPT_PAGE_BDEV_CACHE when the page
> >    starts to be associated with meta data of fs e.g. super block.
> >
> > 3. Lastly, I'd like to reset the annotated value if any, that has been
> >    set in the page, when the page ends the assoication with either page
> >    cache or meta block of fs e.g. freeing the page.
> >
> > Can anyone suggest good places in code for the annotation 1, 2, 3?  It'd
> > be totally appreciated. :-)
> 
> I don't think it makes sense to track lock state in the page (nor
> folio).  Partly bcause there's just so many of them, but also because
> the locking rules don't really apply to individual folios so much as
> they do to the mappings (or anon_vmas) that contain folios.

I've been trying to fully understand what you meant but maybe failed.

FWIW, dept is working based on classification, not instance by instance,
that is similar to lockdep.  This patch is for resolving issues that
might come from the fact that there is a **single class** for PG_locked,
by splitting the class to several ones according to their usages.

> If you're looking to find deadlock scenarios, I think it makes more
> sense to track all folio locks in a given mapping as the same lock
> type rather than track each folio's lock status.
> 
> For example, let's suppose we did something like this in the
> page fault path:
> 
> Look up and lock a folio (we need folios locked to insert them into
> the page tables to avoid a race with truncate)
> Try to allocate a page table
> Go into reclaim, attempt to reclaim a folio from this mapping

I think you are talking about nested lock patterns involving PG_locked.

Even though dept can do much more jobs than just tracking nested lock
patterns within a single context, of course, nested lock patterns
involving PG_locked should be handled appropriately, maybe with the
useful information you gave.  When I work on handling nested locks esp.
involving PG_locked, I will try to get you again.  Thanks.

However, I have no choice but to keep this approach for the **single
class** issue.  Feel free to ask if any.

	Byungchul

> We ought to detect that as a potential deadlock, regardless of which
> folio in the mapping we attempt to reclaim.  So can we track folio
> locking at the mapping/anon_vma level instead?
> 
> ---
> 
> My current understanding of folio locking rules:
> 
> If you hold a lock on folio A, you can take a lock on folio B if:
> 
> 1. A->mapping == B->mapping and A->index < B->index
>    (for example writeback; we take locks on all folios to be written
>     back in order)
> 2. !S_ISBLK(A->mapping->host) and S_ISBLK(B->mapping->host)
> 3. S_ISREG(A->mapping->host) and S_ISREG(B->mapping->host) with
>    inode_lock() held on both and A->index < B->index
>    (the remap_range code)
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
