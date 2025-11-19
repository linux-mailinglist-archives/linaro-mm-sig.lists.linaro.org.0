Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GCY0C6T+4GkSoQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:22:12 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D255410958
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:22:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 46D3440514
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:22:09 +0000 (UTC)
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
	by lists.linaro.org (Postfix) with ESMTPS id 92D823F786
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Nov 2025 14:39:27 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=infradead.org header.s=casper.20170209 header.b=nBP5qgac;
	spf=none (lists.linaro.org: domain of willy@infradead.org has no SPF policy when checking 90.155.50.34) smtp.mailfrom=willy@infradead.org;
	dmarc=pass (policy=none) header.from=infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=jrEBjc2npjUKEbY4i9jofzcj/5yPuOiFOP9lZOX0tsI=; b=nBP5qgacID7pPb1N+57YvHaH6U
	G7JzO5pEUGdhuUMMNn3k9NaEbTv68dj0hY9UW4pHZq6L+RoVGX93qIlWtLYoQytGKMPvLJ/D1KqKX
	GV6hrdcPub9oX2YzpcjTtacFWku+OtVVTd6+pFYjSu6527+53NKY32Lj/L974tmHv3ScDp3gXp1L+
	iFJ2wJM/Lmo71iZAxzafzKq22ZOt8sC31Kd10ep+n2MvqtEeikI1sljZ8uMGCqsNpyKZSf9jdYI8B
	dZo+n/E+UO2Xtx516smblcWCers9IJLf4xYNhwJApoxEs2EHlQuoj0F7yrGXeee4kL13PJKFJYviX
	pvBttZDA==;
Received: from willy by casper.infradead.org with local (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLjJ8-0000000HDmA-0XUa;
	Wed, 19 Nov 2025 14:37:18 +0000
Date: Wed, 19 Nov 2025 14:37:17 +0000
From: Matthew Wilcox <willy@infradead.org>
To: Byungchul Park <byungchul@sk.com>
Message-ID: <aR3WHf9QZ_dizNun@casper.infradead.org>
References: <20251002081247.51255-1-byungchul@sk.com>
 <20251002081247.51255-45-byungchul@sk.com>
 <20251119105312.GA11582@system.software.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251119105312.GA11582@system.software.com>
X-Spamd-Bar: -
X-MailFrom: willy@infradead.org
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; digests; suspicious-header
Message-ID-Hash: RKYVJTRZ67PSOXB6LFKXCUVHUDLYKZR3
X-Message-ID-Hash: RKYVJTRZ67PSOXB6LFKXCUVHUDLYKZR3
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:00:54 +0000
CC: linux-kernel@vger.kernel.org, kernel_team@skhynix.com, torvalds@linux-foundation.org, damien.lemoal@opensource.wdc.com, linux-ide@vger.kernel.org, adilger.kernel@dilger.ca, linux-ext4@vger.kernel.org, mingo@redhat.com, peterz@infradead.org, will@kernel.org, tglx@linutronix.de, rostedt@goodmis.org, joel@joelfernandes.org, sashal@kernel.org, daniel.vetter@ffwll.ch, duyuyang@gmail.com, johannes.berg@intel.com, tj@kernel.org, tytso@mit.edu, david@fromorbit.com, amir73il@gmail.com, gregkh@linuxfoundation.org, kernel-team@lge.com, linux-mm@kvack.org, akpm@linux-foundation.org, mhocko@kernel.org, minchan@kernel.org, hannes@cmpxchg.org, vdavydov.dev@gmail.com, sj@kernel.org, jglisse@redhat.com, dennis@kernel.org, cl@linux.com, penberg@kernel.org, rientjes@google.com, vbabka@suse.cz, ngupta@vflare.org, linux-block@vger.kernel.org, josef@toxicpanda.com, linux-fsdevel@vger.kernel.org, jack@suse.cz, jlayton@kernel.org, dan.j.williams@intel.com, hch@infradead.org, djwong@kernel.org, dri-devel
 @lists.freedesktop.org, rodrigosiqueiramelo@gmail.com, melissa.srw@gmail.com, hamohammed.sa@gmail.com, harry.yoo@oracle.com, chris.p.wilson@intel.com, gwan-gyeong.mun@intel.com, max.byungchul.park@gmail.com, boqun.feng@gmail.com, longman@redhat.com, yunseong.kim@ericsson.com, ysk@kzalloc.com, yeoreum.yun@arm.com, netdev@vger.kernel.org, matthew.brost@intel.com, her0gyugyu@gmail.com, corbet@lwn.net, catalin.marinas@arm.com, bp@alien8.de, dave.hansen@linux.intel.com, x86@kernel.org, hpa@zytor.com, luto@kernel.org, sumit.semwal@linaro.org, gustavo@padovan.org, christian.koenig@amd.com, andi.shyti@kernel.org, arnd@arndb.de, lorenzo.stoakes@oracle.com, Liam.Howlett@oracle.com, rppt@kernel.org, surenb@google.com, mcgrof@kernel.org, petr.pavlu@suse.com, da.gomez@kernel.org, samitolvanen@google.com, paulmck@kernel.org, frederic@kernel.org, neeraj.upadhyay@kernel.org, joelagnelf@nvidia.com, josh@joshtriplett.org, urezki@gmail.com, mathieu.desnoyers@efficios.com, jiangshanlai@gmail.com, qiang
 .zhang@linux.dev, juri.lelli@redhat.com, vincent.guittot@linaro.org, dietmar.eggemann@arm.com, bsegall@google.com, mgorman@suse.de, vschneid@redhat.com, chuck.lever@oracle.com, neil@brown.name, okorniev@redhat.com, Dai.Ngo@oracle.com, tom@talpey.com, trondmy@kernel.org, anna@kernel.org, kees@kernel.org, bigeasy@linutronix.de, clrkwllms@kernel.org, mark.rutland@arm.com, ada.coupriediaz@arm.com, kristina.martsenko@arm.com, wangkefeng.wang@huawei.com, broonie@kernel.org, kevin.brodsky@arm.com, dwmw@amazon.co.uk, shakeel.butt@linux.dev, ast@kernel.org, ziy@nvidia.com, yuzhao@google.com, baolin.wang@linux.alibaba.com, usamaarif642@gmail.com, joel.granados@kernel.org, richard.weiyang@gmail.com, geert+renesas@glider.be, tim.c.chen@linux.intel.com, linux@treblig.org, alexander.shishkin@linux.intel.com, lillian@star-ark.net, chenhuacai@kernel.org, francesco@valla.it, guoweikang.kernel@gmail.com, link@vivo.com, jpoimboe@kernel.org, masahiroy@kernel.org, brauner@kernel.org, thomas.weissschuh@l
 inutronix.de, oleg@redhat.com, mjguzik@gmail.com, andrii@kernel.org, wangfushuai@baidu.com, linux-doc@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-i2c@vger.kernel.org, linux-arch@vger.kernel.org, linux-modules@vger.kernel.org, rcu@vger.kernel.org, linux-nfs@vger.kernel.org, linux-rt-devel@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v17 44/47] dept: introduce APIs to set page usage and use subclasses_evt for the usage
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RKYVJTRZ67PSOXB6LFKXCUVHUDLYKZR3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [3.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[infradead.org:s=casper.20170209];
	DATE_IN_PAST(1.00)[3552];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[infradead.org : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,skhynix.com,linux-foundation.org,opensource.wdc.com,dilger.ca,redhat.com,infradead.org,kernel.org,linutronix.de,goodmis.org,joelfernandes.org,ffwll.ch,gmail.com,intel.com,mit.edu,fromorbit.com,linuxfoundation.org,lge.com,kvack.org,cmpxchg.org,linux.com,google.com,suse.cz,vflare.org,toxicpanda.com,lists.freedesktop.org,oracle.com,ericsson.com,kzalloc.com,arm.com,lwn.net,alien8.de,linux.intel.com,zytor.com,linaro.org,padovan.org,amd.com,arndb.de,suse.com,nvidia.com,joshtriplett.org,efficios.com,linux.dev,suse.de,brown.name,talpey.com,huawei.com,amazon.co.uk,linux.alibaba.com,glider.be,treblig.org,star-ark.net,valla.it,vivo.com,l,baidu.com,lists.infradead.org,lists.linaro.org,lists.linux.dev];
	DKIM_TRACE(0.00)[infradead.org:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCPT_COUNT_GT_50(0.00)[149];
	FROM_NEQ_ENVFROM(0.00)[willy@infradead.org,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,renesas];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	NEURAL_SPAM(0.00)[0.643];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,casper.infradead.org:mid]
X-Rspamd-Queue-Id: 3D255410958
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Nov 19, 2025 at 07:53:12PM +0900, Byungchul Park wrote:
> On Thu, Oct 02, 2025 at 05:12:44PM +0900, Byungchul Park wrote:
> > False positive reports have been observed since dept works with the
> > assumption that all the pages have the same dept class, but the class
> > should be split since the problematic call paths are different depending
> > on what the page is used for.
> > 
> > At least, ones in block device's address_space and ones in regular
> > file's address_space have exclusively different usages.
> > 
> > Thus, define usage candidates like:
> > 
> >    DEPT_PAGE_REGFILE_CACHE /* page in regular file's address_space */
> >    DEPT_PAGE_BDEV_CACHE    /* page in block device's address_space */
> >    DEPT_PAGE_DEFAULT       /* the others */
> 
> 1. I'd like to annotate a page to DEPT_PAGE_REGFILE_CACHE when the page
>    starts to be associated with a page cache for fs data.
> 
> 2. And I'd like to annotate a page to DEPT_PAGE_BDEV_CACHE when the page
>    starts to be associated with meta data of fs e.g. super block.
> 
> 3. Lastly, I'd like to reset the annotated value if any, that has been
>    set in the page, when the page ends the assoication with either page
>    cache or meta block of fs e.g. freeing the page.
> 
> Can anyone suggest good places in code for the annotation 1, 2, 3?  It'd
> be totally appreciated. :-)

I don't think it makes sense to track lock state in the page (nor
folio).  Partly bcause there's just so many of them, but also because
the locking rules don't really apply to individual folios so much as
they do to the mappings (or anon_vmas) that contain folios.

If you're looking to find deadlock scenarios, I think it makes more
sense to track all folio locks in a given mapping as the same lock
type rather than track each folio's lock status.

For example, let's suppose we did something like this in the
page fault path:

Look up and lock a folio (we need folios locked to insert them into
the page tables to avoid a race with truncate)
Try to allocate a page table
Go into reclaim, attempt to reclaim a folio from this mapping

We ought to detect that as a potential deadlock, regardless of which
folio in the mapping we attempt to reclaim.  So can we track folio
locking at the mapping/anon_vma level instead?

---

My current understanding of folio locking rules:

If you hold a lock on folio A, you can take a lock on folio B if:

1. A->mapping == B->mapping and A->index < B->index
   (for example writeback; we take locks on all folios to be written
    back in order)
2. !S_ISBLK(A->mapping->host) and S_ISBLK(B->mapping->host)
3. S_ISREG(A->mapping->host) and S_ISREG(B->mapping->host) with
   inode_lock() held on both and A->index < B->index
   (the remap_range code)

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
