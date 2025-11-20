Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gFt6GLb+4GkSoQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:22:30 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id EEA0141097D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:22:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 01356404FF
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:22:29 +0000 (UTC)
Received: from invmail4.hynix.com (exvmail4.skhynix.com [166.125.252.92])
	by lists.linaro.org (Postfix) with ESMTP id A2E5D3F859
	for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Nov 2025 02:09:17 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of byungchul@sk.com designates 166.125.252.92 as permitted sender) smtp.mailfrom=byungchul@sk.com;
	dmarc=none
X-AuditID: a67dfc5b-c45ff70000001609-d3-691e784bff7b
Date: Thu, 20 Nov 2025 11:09:09 +0900
From: Byungchul Park <byungchul@sk.com>
To: Matthew Wilcox <willy@infradead.org>
Message-ID: <20251120020909.GA78650@system.software.com>
References: <20251002081247.51255-1-byungchul@sk.com>
 <20251002081247.51255-45-byungchul@sk.com>
 <20251119105312.GA11582@system.software.com>
 <aR3WHf9QZ_dizNun@casper.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aR3WHf9QZ_dizNun@casper.infradead.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Brightmail-Tracker: H4sIAAAAAAAAA02SfUxTZxSH89773tvbat214nwnzixdCAYCGwaTs2TZR2KyGxeTGTXZ1Gxr
	bCONBbEowpwJzOIa3AyytEALDDDU8qm0iraIUSa4jg/5cFIcDItYJVLMsC1BS12vZpn/nDw5
	v1+enD8ORyuq2bWcNuuQRp+l0ilZGZYFltemfJ63Xvu++UEKhIJGDJXnmlkwOioYGGxtQrDw
	3EpDkesFhuDiXxJ4ej7KwuPf5hGYfNMslM0UYnhi+wmBxW+VwEz3ZxCY7GDgxcRDCkbDswiW
	zPvh1zonC7W+CRo67T+w8KDkIg0j0yvAYzrJQmCokoK58yxUWUsRmKscGFz33BIYN5dSMGnz
	YzC3rQFr2XEqNh5RYGrpoGDR1iiBvjPjGGwFCWDtH2Eg4kuD1sAtBjx/32Hgsb+UhcmbJxi4
	VHBPAo6xbgTB2z4KjO4QBsf9WKXzbjJUVI+zcKXTg8G4FETQc3mKgsFrvQwMNw1iOPfQS4HH
	0oDhlruFgfrRIQqc/X00hE/FQ8tcHQu/zPnRJ2phoegUFhqd7ZRQNLzECs3VzUgI1h+nhaKS
	GBmcR4T63llWeBb6kxU6wzVYON2fIrgsExLBcPWuRKhxHBYMNwKM4LQnfZG8S/ahWqPT5mr0
	7330rSwj8qwGZzvW5Z0ZtVAFyPBmMZJyhE8npqrndDHiXnKf4Zi4xnwC6S12syKzfCLxehdf
	VuL4DWT2wsZiJONovi6etPxxnRE7q3gdCd9olYgs54FEG+xILCn4DkRun2hjXgUriadiGotM
	80nEG52hRCnNx5OzUU5cS2MnjNX9SIu8mn+XXGu/SYkewk9JSZOxgX5181vkut2LSxBveU1r
	eU1r+V9bg+hGpNBm5WaqtLr01Iz8LG1e6t4DmQ4U+1rbscjuy2h+cHsX4jmkXC7/sudtrYJR
	5ebkZ3YhwtHKOHnCp+u0Crlalf+dRn/gG/1hnSanC8VzWLlGvjF8RK3g96kOafZrNNka/X8p
	xUnXFqA9pxe+GkgdMMk8H38d/L6wxG+lEhPjElye5Ce/Lwtv7v75afvWZW0HQ+sjd5JdY6rs
	gZPbNpsn79PlZ8tz03dsP4hG3th0dVNoZeFO1l617cqUdJdid23a1M5K8s/Y0cjIOx/MRaXl
	3dSO3keBPb4tF9X01p4tR5tXDDvKhlZPuOcZJc7JUKUl0foc1b9rqkVSsQMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sb0xbZRTGfe/73j80llwrsuvYNOmCkiVDIS4eJzH6aTdLtqgxcUGJa8aN
	3LQU1jIEsyVlpUJQJ5QUspbNWlxFYIy1SGSk2LFRMxjbKtOhDgFTYQQYyaRs0NLaG2Pcl5Pf
	Oc/znJwPh8OaOL2Vk40VksmoM2gZFVEdeNW6a1/VM/KLQ50F8EtNkEB0tZ5A2/luBup9p2i4
	2dOFYDpaj+BBzIXBNpAksGkPsbC6/jsLyUAIQUvYjqG7r4aCv3sTDCxevo/AMRthoHWhhsCK
	9zMEzjkXCwsje2F5epCG5NQ8BbfXlhB4IwkKIsE6BJstevjS42cgNn4DQ6vjJoKvZqcw3O1N
	iX2hPxAEOk4w8FfjdxgmIulwK7rCwFXHpwwsh9souNfLgPtEgIbTLjsCa/t5BlpO+wgMzFxk
	IbwYp+BOi52CLt9+mPbOERhr9FCp+1KuC1vA1WqlUuUuBY5zgxSseztZuNZ+h4DXkg2u8Qka
	/uxwshCfzYOkuwxCXfMsTH3hINCzfIN+3YHEB7aTROz091Oi7adNRuw+043E2IYdiatnrVi0
	Nabay0srWKz1fySeHVtixI3oz4wYWHMTcdQjiE3ju8QB5xQr1g79xr65p1BVUCwZ5ErJ9MJr
	h1Ql8Q03Kfdtq2q/7aQsqDazAXGcwL8kXKs93oDSOMJnC2MNFxmFGf55YXJyHSuWDD5HWOrL
	b0AqDvOeLOHc6CVa8TzJG4S1Kz2swmoehMS3HUgxafhBJNz65AL9r/CEcPVUhCiM+Z3CZGKB
	UpZiPkv4JsEp47TUCb966rDCT/E7hGD/j1QjUjsfSTsfSTv/T7sR7kQZsrGyVCcbduea9SXV
	Rrkq93BZqQ+lftJ7PN70PVqd2DuMeA5pH1cfDG2XNbSu0lxdOowEDmsz1NlvbJM16mJd9ceS
	qewD01GDZB5GWRzRblHve1c6pOE/1FVIekkql0z/qRSXttWCrhx772hBRWHmyz35+R7LTPMr
	6Q99b0dzFv30wPD8Y+k1Ujhel/t+buERlz6WbWwK0qEiOJPjj+lHdrxT2mxJPHvP5ZH3+0bn
	8GDeTODwyeofirZfPxI8WJ9sO0bfL+6zft1sGhop6Ch/eo9Fbb1kux7+fPfD/oTkKyKxt57L
	PKAl5hJd3k5sMuv+AScIleSPAwAA
X-CFilter-Loop: Reflected
X-Spamd-Bar: -
X-MailFrom: byungchul@sk.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 4H752Z4XI7G5RCFLDUBXIXC2UDIQJKBB
X-Message-ID-Hash: 4H752Z4XI7G5RCFLDUBXIXC2UDIQJKBB
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:00:56 +0000
CC: linux-kernel@vger.kernel.org, kernel_team@skhynix.com, torvalds@linux-foundation.org, damien.lemoal@opensource.wdc.com, linux-ide@vger.kernel.org, adilger.kernel@dilger.ca, linux-ext4@vger.kernel.org, mingo@redhat.com, peterz@infradead.org, will@kernel.org, tglx@linutronix.de, rostedt@goodmis.org, joel@joelfernandes.org, sashal@kernel.org, daniel.vetter@ffwll.ch, duyuyang@gmail.com, johannes.berg@intel.com, tj@kernel.org, tytso@mit.edu, david@fromorbit.com, amir73il@gmail.com, gregkh@linuxfoundation.org, kernel-team@lge.com, linux-mm@kvack.org, akpm@linux-foundation.org, mhocko@kernel.org, minchan@kernel.org, hannes@cmpxchg.org, vdavydov.dev@gmail.com, sj@kernel.org, jglisse@redhat.com, dennis@kernel.org, cl@linux.com, penberg@kernel.org, rientjes@google.com, vbabka@suse.cz, ngupta@vflare.org, linux-block@vger.kernel.org, josef@toxicpanda.com, linux-fsdevel@vger.kernel.org, jack@suse.cz, jlayton@kernel.org, dan.j.williams@intel.com, hch@infradead.org, djwong@kernel.org, dri-devel
 @lists.freedesktop.org, rodrigosiqueiramelo@gmail.com, melissa.srw@gmail.com, hamohammed.sa@gmail.com, harry.yoo@oracle.com, chris.p.wilson@intel.com, gwan-gyeong.mun@intel.com, max.byungchul.park@gmail.com, boqun.feng@gmail.com, longman@redhat.com, yunseong.kim@ericsson.com, ysk@kzalloc.com, yeoreum.yun@arm.com, netdev@vger.kernel.org, matthew.brost@intel.com, her0gyugyu@gmail.com, corbet@lwn.net, catalin.marinas@arm.com, bp@alien8.de, dave.hansen@linux.intel.com, x86@kernel.org, hpa@zytor.com, luto@kernel.org, sumit.semwal@linaro.org, gustavo@padovan.org, christian.koenig@amd.com, andi.shyti@kernel.org, arnd@arndb.de, lorenzo.stoakes@oracle.com, Liam.Howlett@oracle.com, rppt@kernel.org, surenb@google.com, mcgrof@kernel.org, petr.pavlu@suse.com, da.gomez@kernel.org, samitolvanen@google.com, paulmck@kernel.org, frederic@kernel.org, neeraj.upadhyay@kernel.org, joelagnelf@nvidia.com, josh@joshtriplett.org, urezki@gmail.com, mathieu.desnoyers@efficios.com, jiangshanlai@gmail.com, qiang
 .zhang@linux.dev, juri.lelli@redhat.com, vincent.guittot@linaro.org, dietmar.eggemann@arm.com, bsegall@google.com, mgorman@suse.de, vschneid@redhat.com, chuck.lever@oracle.com, neil@brown.name, okorniev@redhat.com, Dai.Ngo@oracle.com, tom@talpey.com, trondmy@kernel.org, anna@kernel.org, kees@kernel.org, bigeasy@linutronix.de, clrkwllms@kernel.org, mark.rutland@arm.com, ada.coupriediaz@arm.com, kristina.martsenko@arm.com, wangkefeng.wang@huawei.com, broonie@kernel.org, kevin.brodsky@arm.com, dwmw@amazon.co.uk, shakeel.butt@linux.dev, ast@kernel.org, ziy@nvidia.com, yuzhao@google.com, baolin.wang@linux.alibaba.com, usamaarif642@gmail.com, joel.granados@kernel.org, richard.weiyang@gmail.com, geert+renesas@glider.be, tim.c.chen@linux.intel.com, linux@treblig.org, alexander.shishkin@linux.intel.com, lillian@star-ark.net, chenhuacai@kernel.org, francesco@valla.it, guoweikang.kernel@gmail.com, link@vivo.com, jpoimboe@kernel.org, masahiroy@kernel.org, brauner@kernel.org, thomas.weissschuh@l
 inutronix.de, oleg@redhat.com, mjguzik@gmail.com, andrii@kernel.org, wangfushuai@baidu.com, linux-doc@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-i2c@vger.kernel.org, linux-arch@vger.kernel.org, linux-modules@vger.kernel.org, rcu@vger.kernel.org, linux-nfs@vger.kernel.org, linux-rt-devel@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v17 44/47] dept: introduce APIs to set page usage and use subclasses_evt for the usage
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4H752Z4XI7G5RCFLDUBXIXC2UDIQJKBB/>
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
	DATE_IN_PAST(1.00)[3541];
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
	NEURAL_HAM(-0.00)[-0.952];
	TAGGED_RCPT(0.00)[linaro-mm-sig,renesas];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,system.software.com:mid]
X-Rspamd-Queue-Id: EEA0141097D
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

Thank you for the suggestion!

Since two folios associated to different mappings might appear in the
same callpath that usually be classified to a single class, I need to
think how to reflect the suggestion.

I guess you wanted to tell me a folio can only be associated to a single
mapping at once.  Right?  If so, sure, I should reflect it.

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
> 
> We ought to detect that as a potential deadlock, regardless of which
> folio in the mapping we attempt to reclaim.  So can we track folio

Did you mean 'regardless' for 'potential' detection, right?

> locking at the mapping/anon_vma level instead?

Piece of cake.  Even though it may increase the number of DEPT classes,
I hope it will be okay.  I just need to know the points in code where
folios start/end being associated to their specific mappings.

	Byungchul

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
