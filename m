Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qq7hLi1yVmrZ5gAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:30:21 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A73C757730
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:30:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=linux.dev header.s=key1 header.b=lVoTXcvt;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=linux.dev (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 37F3F40A78
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 17:30:20 +0000 (UTC)
Received: from out-177.mta0.migadu.com (out-177.mta0.migadu.com [91.218.175.177])
	by lists.linaro.org (Postfix) with ESMTPS id DBBC33F930
	for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Jul 2026 19:09:05 +0000 (UTC)
X-Forwarded-Encrypted: i=1; AHgh+RqJO7Uy2jnH/207MdiSuParG/fFMMbWR2S7al1KmDkb0UGnRwGT46/VooEQw9oZOsHV2wrJqwafr7RqSsA8@lists.linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1783969744;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=P+3EWmrn9TlytCVwvSjefnIQTVg7nZtucIhvwx2Wfn4=;
	b=lVoTXcvtGyEx+PGSjTs6XnShLHRB4hs6AWglpSh0LcrneAsj5sQ2yggOqUL3dD6/uhorQ7
	u6DhDAvIw63hs12+xKCMW/cikUcAMNyNiQTYXNoWuiBZHdVr+CztZpxa0bPI439O94zJCx
	or20aqSXpnRH12Rusea/3ofA2SOUDvY=
X-Gm-Message-State: AOJu0Yyb022nAjaDkiua3l7qzBVFhoK+QCriSLw+Vt+CTS1uo1JHmTS5
	XsgCuez+jMSYaCbHvNfhvPpoXx4ENmGZ/NyfzK7i4ygVuI/s8dk91rMIICB8DNo0WRzS483yK3p
	TCTGR1Yc9agmdeRR9ZKtHFAb39U7jj6wcnlFx/DCr
X-Received: by 2002:a05:622a:4d47:b0:517:5e32:2d14 with SMTP id
 d75a77b69052e-51d7bc5094cmr5957821cf.10.1783969731978; Mon, 13 Jul 2026
 12:08:51 -0700 (PDT)
MIME-Version: 1.0
References: <20250529053513.1592088-1-yilun.xu@linux.intel.com>
 <20250529053513.1592088-11-yilun.xu@linux.intel.com> <20250602133009.GC233377@nvidia.com>
 <CAEvNRgFpJWQ5M5sQhGpQUV3GbBq9N+MQhhaxdxa=D8ky94SCsw@mail.gmail.com>
In-Reply-To: <CAEvNRgFpJWQ5M5sQhGpQUV3GbBq9N+MQhhaxdxa=D8ky94SCsw@mail.gmail.com>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Fuad Tabba <fuad.tabba@linux.dev>
Date: Mon, 13 Jul 2026 20:08:14 +0100
X-Gmail-Original-Message-ID: <CA+EHjTwd9uku-ZV5y8xcK8VWdOfhcchyW=_fzjpCf5Vk2wQoGQ@mail.gmail.com>
X-Gm-Features: AUfX_mw-84x_DmgF59r9sD3Wt_uWXnd6_ELlU4FK10Faaz6XnikTNIHgvUm1jO4
Message-ID: <CA+EHjTwd9uku-ZV5y8xcK8VWdOfhcchyW=_fzjpCf5Vk2wQoGQ@mail.gmail.com>
To: Ackerley Tng <ackerleytng@google.com>
X-Migadu-Flow: FLOW_OUT
X-Spamd-Bar: ---
X-MailFrom: fuad.tabba@linux.dev
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: E3JLCN2VI6ETRHZKOIMNAKUB3L2DDV2C
X-Message-ID-Hash: E3JLCN2VI6ETRHZKOIMNAKUB3L2DDV2C
X-Mailman-Approved-At: Tue, 14 Jul 2026 17:21:05 +0000
CC: Jason Gunthorpe <jgg@nvidia.com>, Xu Yilun <yilun.xu@linux.intel.com>, kvm@vger.kernel.org, sumit.semwal@linaro.org, christian.koenig@amd.com, pbonzini@redhat.com, seanjc@google.com, alex.williamson@redhat.com, dan.j.williams@intel.com, aik@amd.com, linux-coco@lists.linux.dev, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, vivek.kasireddy@intel.com, yilun.xu@intel.com, linux-kernel@vger.kernel.org, lukas@wunner.de, yan.y.zhao@intel.com, daniel.vetter@ffwll.ch, leon@kernel.org, baolu.lu@linux.intel.com, zhenzhong.duan@intel.com, tao1.su@intel.com, linux-pci@vger.kernel.org, zhiw@nvidia.com, simona.vetter@ffwll.ch, shameerali.kolothum.thodi@huawei.com, aneesh.kumar@kernel.org, iommu@lists.linux.dev, kevin.tian@intel.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 10/30] vfio/pci: Export vfio dma-buf specific info for importers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/E3JLCN2VI6ETRHZKOIMNAKUB3L2DDV2C/>
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[linux.dev : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:ackerleytng@google.com,m:jgg@nvidia.com,m:yilun.xu@linux.intel.com,m:kvm@vger.kernel.org,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:pbonzini@redhat.com,m:seanjc@google.com,m:alex.williamson@redhat.com,m:dan.j.williams@intel.com,m:aik@amd.com,m:linux-coco@lists.linux.dev,m:dri-devel@lists.freedesktop.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:vivek.kasireddy@intel.com,m:yilun.xu@intel.com,m:linux-kernel@vger.kernel.org,m:lukas@wunner.de,m:yan.y.zhao@intel.com,m:daniel.vetter@ffwll.ch,m:leon@kernel.org,m:baolu.lu@linux.intel.com,m:zhenzhong.duan@intel.com,m:tao1.su@intel.com,m:linux-pci@vger.kernel.org,m:zhiw@nvidia.com,m:simona.vetter@ffwll.ch,m:shameerali.kolothum.thodi@huawei.com,m:aneesh.kumar@kernel.org,m:iommu@lists.linux.dev,m:kevin.tian@intel.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[fuad.tabba@linux.dev,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[32];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linux.dev:-];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[fuad.tabba@linux.dev,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,nvidia.com:email,linaro.org:email,lists.linaro.org:from_smtp,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1A73C757730

On Sun, 12 Jul 2026 at 02:02, Ackerley Tng <ackerleytng@google.com> wrote:
>
> Jason Gunthorpe <jgg@nvidia.com> writes:
>
> > On Thu, May 29, 2025 at 01:34:53PM +0800, Xu Yilun wrote:
> >> Export vfio dma-buf specific info by attaching vfio_dma_buf_data in
> >> struct dma_buf::priv. Provide a helper vfio_dma_buf_get_data() for
> >> importers to fetch these data. Exporters identify VFIO dma-buf by
> >> successfully getting these data.
> >>
> >> VFIO dma-buf supports disabling host access to these exported MMIO
> >> regions when the device is converted to private. Exporters like KVM
> >> need to identify this type of dma-buf to decide if it is good to use.
> >> KVM only allows host unaccessible MMIO regions been mapped in private
> >> roots.
> >>
> >> Export struct kvm * handler attached to the vfio device. This
> >> allows KVM to do another sanity check. MMIO should only be assigned to
> >> a CoCo VM if its owner device is already assigned to the same VM.
> >
> > This doesn't seem right, it should be encapsulated into the standard
> > DMABUF API in some way.
> >
>
> I'd like to propose an alternative. I've been working on guest_memfd and
> new to the world of IO, please help me along! :)
>
> It seems like using dmabufs are used a little awkwardly here. IIUC
> dmabufs were originally meant to expose memory of one device to another
> device, mostly meant to share memory. Dmabufs do expose MMIO too, for
> device to device communications. Without virtualization, userspace MMIO
> would be done by mmap()-ing a VFIO fd and having the userspace program
> write to the userspace addresses.
>
> Before CoCo, device passthrough (MMIO) is mostly handled by mmap()-ing a
> VFIO fd and setting up the userspace address in a KVM memslot for the
> guest.
>
> With CoCo, is the problem we're solving that we want KVM to know what
> pfns to set up in stage 2 page tables, but not via userspace addresses?
>
> guest_memfd already does that for regular host memory, tracks the
> private/shared-ness of the memory, tracks which struct kvm the memory
> belongs to.
>
> guest_memfd functions as KVM's bridge to host memory. KVM already can
> ask guest_memfd for the pfn to map into stage 2 page tables, and already
> asks guest_memfd for the shared/private state of the memory. guest_memfd
> already also blocks the host from faulting guest private memory
> (mmap()-ing is always allowed).
>
>
> Instead of using dmabuf as the intermediary between the MMIO PFNs and
> KVM, why not use guest_memfd?
>
> What if we make guest_memfd accept a VFIO fd, or a dmabuf fd?

This is interesting for pKVM too, provided it covers more than MMIO.

We need guest_memfd to be backable by a dmabuf for ordinary guest memory, not
only for device MMIO. There is mobile hardware that doesn't tolerate scattered
private memory (DMA engines that can't gather, IOMMU page-table size
constraints), and a CMA-backed dmabuf heap is the practical way to get
contiguous memory at runtime. HugeTLB doesn't help, it wants boot-time
reservation. Those pages are struct-page backed, so it's a different problem
from the non-struct-page MMIO case, and the shared parts still need to be
GUP-able.

More important for the API shape: conversions have to work on subsets of such a
region, at page granularity. A pKVM guest doesn't know what backs its memory, so
it will issue share/unshare hypercalls over arbitrary ranges of whatever it was
given. If a dmabuf-backed guest_memfd can only be converted as a whole, we can't
use it for memory, and the guest can't be taught to care.

Quentin made both points on the in-place conversion series [1], and covered the
wider framing at KVM Forum [2].

Cheers,
/fuad

[1] https://lore.kernel.org/all/od4dx6snqsl2qiocgf3jxm4dndxhrlvsfr22eveuno6nskgfdj@mxsywvku2jk5/
[2] https://www.youtube.com/watch?v=zaBxoyRepzA

>
> guest_memfd can then take the mmap() calls from userspace and .fault()
> from mm, and then forward them to VFIO or dmabuf. This way, VFIO/dmabuf
> can stick to their original functions, and the changes to VFIO/dmabuf
> would probably revolve around disabling access.
>
> Disabling access would probably involve some of these:
>
> + When guest_memfd receives the fd, it could return error for existing
>   mappings, or perhaps it could just force-unmap.
> + 1 extra flag or field to indicate that guest_memfd is controlling this
>   file, so that if userspace tries to take some actions with the
>   original VFIO or dmabuf fd, the request should be blocked.
> + Perhaps just close the original fd, like dup2(oldfd, newfd) closes
>   newfd?
>
>
> I'm about to restart work on guest_memfd HugeTLB and I'm thinking about
> a similar approach for guest_memfd HugeTLB, where perhaps the interface
> could be that userspace will give guest_memfd a HugeTLB fd at creation
> time, and then the original HugeTLB fd would be rendered unusable in the
> same way as above, perhaps like with the S_IMMUTABLE inode flag, but
> also blocking reads, and not userspace-modifiable.
>
>
> In the course of a CoCo guest's operation, will the guest need to
> convert between private/shared MMIO? Will the guest need some pages
> shared and others private? If these are required operations, guest_memfd
> already provides the tracking and is going to have a conversion ioctl
> very soon. Instead of further extending dmabuf to track more things, how
> about letting guest_memfd track it?
>
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
