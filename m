Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 1YQIETdyVmrc5gAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:30:31 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id B8C08757735
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:30:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=linux.dev header.s=key1 header.b=VhJhjqFa;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=linux.dev (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D0F5A40165
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 17:30:29 +0000 (UTC)
Received: from out-189.mta0.migadu.com (out-189.mta0.migadu.com [91.218.175.189])
	by lists.linaro.org (Postfix) with ESMTPS id 1985940176
	for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Jul 2026 08:30:48 +0000 (UTC)
X-Forwarded-Encrypted: i=1; AHgh+RqYg4h+nPU9HlPEMyktP5Qq0IqWLE4mEzyBrYdTIOYayNcx7hWVeRLzghDczvVxJoa56wFxOOVZRx1ytAnu@lists.linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1784011123;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=BwXrIUkjii1ll+DVDzD6pSQxEm1jWrnB4GfLjhOhNmE=;
	b=VhJhjqFanTSqEeOdsH3QkEuhEgjYtP6UxwgkLP/s/90xAnKyMaZg9Yde3T578uWE8ydF6s
	sAp8fIDwmPegro7ZXUoJr2Td+16ofgBYYoo7s1mcJNwk5Yl6/PBZ+j7qbKZU2CryLsXqJb
	qgiX+afHzd8IjD+5gD2D6yAi3hFxEtc=
X-Gm-Message-State: AOJu0YzxXH/TnmhlSIjZlEPfU5/BcDabrFF0t4g0dnUdLPTiZDCjIqan
	iGSQP4vntf9tQa4HtIjXodZ5hIkQlD43P6r2K6gp96/hlRucnSMb0JR7lsE5KLlc0+cqqdrmt3y
	/hxKbvG47rHXd8nEpxuqBOUIILbsAmwSlFHvy5uIm
X-Received: by 2002:ac8:5d56:0:b0:516:ccc0:ee38 with SMTP id
 d75a77b69052e-51d7bcd4bb1mr10963351cf.9.1784011118743; Mon, 13 Jul 2026
 23:38:38 -0700 (PDT)
MIME-Version: 1.0
References: <20250529053513.1592088-1-yilun.xu@linux.intel.com>
 <20250529053513.1592088-11-yilun.xu@linux.intel.com> <20250602133009.GC233377@nvidia.com>
 <CAEvNRgFpJWQ5M5sQhGpQUV3GbBq9N+MQhhaxdxa=D8ky94SCsw@mail.gmail.com>
 <CA+EHjTwd9uku-ZV5y8xcK8VWdOfhcchyW=_fzjpCf5Vk2wQoGQ@mail.gmail.com> <20260713191727.GH674038@nvidia.com>
In-Reply-To: <20260713191727.GH674038@nvidia.com>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Fuad Tabba <fuad.tabba@linux.dev>
Date: Tue, 14 Jul 2026 07:38:01 +0100
X-Gmail-Original-Message-ID: <CA+EHjTxZ0N3Tfnid404B4tkb_E+Z8mODTHTgBPiF6=bwZp7Hjw@mail.gmail.com>
X-Gm-Features: AUfX_mxAW6jRYwmHaZyFKiL0Q4hnn-XRmxgnYdjCPArDIPvmYwpLrjGWtt2STE0
Message-ID: <CA+EHjTxZ0N3Tfnid404B4tkb_E+Z8mODTHTgBPiF6=bwZp7Hjw@mail.gmail.com>
To: Jason Gunthorpe <jgg@nvidia.com>
X-Migadu-Flow: FLOW_OUT
X-Spamd-Bar: ---
X-MailFrom: fuad.tabba@linux.dev
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: VHXMGTD5VRGPSBVU3OT6UTWURLVSS3TB
X-Message-ID-Hash: VHXMGTD5VRGPSBVU3OT6UTWURLVSS3TB
X-Mailman-Approved-At: Tue, 14 Jul 2026 17:21:05 +0000
CC: Ackerley Tng <ackerleytng@google.com>, Xu Yilun <yilun.xu@linux.intel.com>, kvm@vger.kernel.org, sumit.semwal@linaro.org, christian.koenig@amd.com, pbonzini@redhat.com, seanjc@google.com, alex.williamson@redhat.com, dan.j.williams@intel.com, aik@amd.com, linux-coco@lists.linux.dev, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, vivek.kasireddy@intel.com, yilun.xu@intel.com, linux-kernel@vger.kernel.org, lukas@wunner.de, yan.y.zhao@intel.com, daniel.vetter@ffwll.ch, leon@kernel.org, baolu.lu@linux.intel.com, zhenzhong.duan@intel.com, tao1.su@intel.com, linux-pci@vger.kernel.org, zhiw@nvidia.com, simona.vetter@ffwll.ch, shameerali.kolothum.thodi@huawei.com, aneesh.kumar@kernel.org, iommu@lists.linux.dev, kevin.tian@intel.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 10/30] vfio/pci: Export vfio dma-buf specific info for importers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VHXMGTD5VRGPSBVU3OT6UTWURLVSS3TB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.59 / 15.00];
	R_DKIM_REJECT(1.00)[linux.dev:s=key1];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[linux.dev : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jgg@nvidia.com,m:ackerleytng@google.com,m:yilun.xu@linux.intel.com,m:kvm@vger.kernel.org,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:pbonzini@redhat.com,m:seanjc@google.com,m:alex.williamson@redhat.com,m:dan.j.williams@intel.com,m:aik@amd.com,m:linux-coco@lists.linux.dev,m:dri-devel@lists.freedesktop.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:vivek.kasireddy@intel.com,m:yilun.xu@intel.com,m:linux-kernel@vger.kernel.org,m:lukas@wunner.de,m:yan.y.zhao@intel.com,m:daniel.vetter@ffwll.ch,m:leon@kernel.org,m:baolu.lu@linux.intel.com,m:zhenzhong.duan@intel.com,m:tao1.su@intel.com,m:linux-pci@vger.kernel.org,m:zhiw@nvidia.com,m:simona.vetter@ffwll.ch,m:shameerali.kolothum.thodi@huawei.com,m:aneesh.kumar@kernel.org,m:iommu@lists.linux.dev,m:kevin.tian@intel.com,s:lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[32];
	FORGED_SENDER(0.00)[fuad.tabba@linux.dev,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[fuad.tabba@linux.dev,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[linux.dev:-];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,nvidia.com:email,linaro.org:email,lists.linaro.org:from_smtp,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B8C08757735

On Mon, 13 Jul 2026 at 20:17, Jason Gunthorpe <jgg@nvidia.com> wrote:
>
> On Mon, Jul 13, 2026 at 08:08:14PM +0100, Fuad Tabba wrote:
> > On Sun, 12 Jul 2026 at 02:02, Ackerley Tng <ackerleytng@google.com> wrote:
> > >
> > > Jason Gunthorpe <jgg@nvidia.com> writes:
> > >
> > > > On Thu, May 29, 2025 at 01:34:53PM +0800, Xu Yilun wrote:
> > > >> Export vfio dma-buf specific info by attaching vfio_dma_buf_data in
> > > >> struct dma_buf::priv. Provide a helper vfio_dma_buf_get_data() for
> > > >> importers to fetch these data. Exporters identify VFIO dma-buf by
> > > >> successfully getting these data.
> > > >>
> > > >> VFIO dma-buf supports disabling host access to these exported MMIO
> > > >> regions when the device is converted to private. Exporters like KVM
> > > >> need to identify this type of dma-buf to decide if it is good to use.
> > > >> KVM only allows host unaccessible MMIO regions been mapped in private
> > > >> roots.
> > > >>
> > > >> Export struct kvm * handler attached to the vfio device. This
> > > >> allows KVM to do another sanity check. MMIO should only be assigned to
> > > >> a CoCo VM if its owner device is already assigned to the same VM.
> > > >
> > > > This doesn't seem right, it should be encapsulated into the standard
> > > > DMABUF API in some way.
> > > >
> > >
> > > I'd like to propose an alternative. I've been working on guest_memfd and
> > > new to the world of IO, please help me along! :)
> > >
> > > It seems like using dmabufs are used a little awkwardly here. IIUC
> > > dmabufs were originally meant to expose memory of one device to another
> > > device, mostly meant to share memory. Dmabufs do expose MMIO too, for
> > > device to device communications. Without virtualization, userspace MMIO
> > > would be done by mmap()-ing a VFIO fd and having the userspace program
> > > write to the userspace addresses.
> > >
> > > Before CoCo, device passthrough (MMIO) is mostly handled by mmap()-ing a
> > > VFIO fd and setting up the userspace address in a KVM memslot for the
> > > guest.
> > >
> > > With CoCo, is the problem we're solving that we want KVM to know what
> > > pfns to set up in stage 2 page tables, but not via userspace addresses?
> > >
> > > guest_memfd already does that for regular host memory, tracks the
> > > private/shared-ness of the memory, tracks which struct kvm the memory
> > > belongs to.
> > >
> > > guest_memfd functions as KVM's bridge to host memory. KVM already can
> > > ask guest_memfd for the pfn to map into stage 2 page tables, and already
> > > asks guest_memfd for the shared/private state of the memory. guest_memfd
> > > already also blocks the host from faulting guest private memory
> > > (mmap()-ing is always allowed).
> > >
> > >
> > > Instead of using dmabuf as the intermediary between the MMIO PFNs and
> > > KVM, why not use guest_memfd?
> > >
> > > What if we make guest_memfd accept a VFIO fd, or a dmabuf fd?
> >
> > This is interesting for pKVM too, provided it covers more than MMIO.
> >
> > We need guest_memfd to be backable by a dmabuf for ordinary guest memory, not
> > only for device MMIO. There is mobile hardware that doesn't tolerate scattered
> > private memory (DMA engines that can't gather, IOMMU page-table size
> > constraints), and a CMA-backed dmabuf heap is the practical way to get
> > contiguous memory at runtime.
>
> Why can't guestmemfd allocate directly from CMA? Allocating struct
> page memory through dmabuf just to put it back in a guestmemfd sounds
> very ugly to me.

Fair, and I think you're right. If guest_memfd can allocate from CMA directly
that covers what we need for contiguous guest memory, and it's cleaner than
routing it through a dmabuf. It also keeps the shared pages struct-page backed
and GUP-able, which the CMA heap's own mmap doesn't, since it sets VM_PFNMAP.
So going through a dmabuf for plain guest RAM would have cost us the thing we
need on the shared side anyway.

Consider the request to be for guest_memfd to be able to give us physically
contiguous memory. dmabuf was the mechanism I assumed, not the requirement.


> > HugeTLB doesn't help, it wants boot-time
> > reservation. Those pages are struct-page backed, so it's a different problem
> > from the non-struct-page MMIO case, and the shared parts still need to be
> > GUP-able.
>
> Isn't dmabuf pretty allergic to mmaping refcounted struct page backed
> memory since that wrecks its lifetime model?

Yes, and that's the same point. Agreed.

> > More important for the API shape: conversions have to work on subsets of such a
> > region, at page granularity. A pKVM guest doesn't know what backs its memory, so
> > it will issue share/unshare hypercalls over arbitrary ranges of whatever it was
> > given. If a dmabuf-backed guest_memfd can only be converted as a whole, we can't
> > use it for memory, and the guest can't be taught to care.
>
> More reasons not to involve DMABUF since guestmemfd already does all
> of this...

Also agreed for guest RAM.

Where I do still think a dmabuf is involved is the case where the buffer isn't
guest_memfd's to allocate: it already belongs to another exporter, and the guest
needs to see that same buffer. That's structurally what you're already handling
for device memory rather than a separate guest_memfd-over-dmabuf path, so I
don't think it argues for backing ordinary guest memory with a dmabuf.

> Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
