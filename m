Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IFHFKFX/4GkSoQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:25:09 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 56A2F410B01
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:25:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6274440A06
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:25:08 +0000 (UTC)
Received: from fhigh-b5-smtp.messagingengine.com (fhigh-b5-smtp.messagingengine.com [202.12.124.156])
	by lists.linaro.org (Postfix) with ESMTPS id 93CDE3F990
	for <linaro-mm-sig@lists.linaro.org>; Fri, 21 Nov 2025 00:40:39 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=shazbot.org header.s=fm2 header.b="bQ/usSFT";
	dkim=pass header.d=messagingengine.com header.s=fm3 header.b="W 6/D/Im";
	spf=pass (lists.linaro.org: domain of alex@shazbot.org designates 202.12.124.156 as permitted sender) smtp.mailfrom=alex@shazbot.org;
	dmarc=pass (policy=none) header.from=shazbot.org
Received: from phl-compute-02.internal (phl-compute-02.internal [10.202.2.42])
	by mailfhigh.stl.internal (Postfix) with ESMTP id 4F1D37A014B;
	Thu, 20 Nov 2025 19:40:38 -0500 (EST)
Received: from phl-imap-18 ([10.202.2.89])
  by phl-compute-02.internal (MEProxy); Thu, 20 Nov 2025 19:40:39 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=shazbot.org; h=
	cc:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1763685638;
	 x=1763772038; bh=BWrF0R3qQL8kwm9npP1EvAhcAZRE+BA2fEO0OQij6hY=; b=
	bQ/usSFT6o+GWegKvvd8h3PcSB2A1hCVejwJtF7wsEdC7CwzuBGsDiHZbmkxFhTZ
	d3UIol3MggwYKtr3/7m8xHyYxFZEfi8xy9RcSPvxuCsyc0MdounLwdBO/jy+bF8Q
	QMRupKehNfw8HmjuvCCa78xT+NL7tm00BrGzRYcDVClQyvRaUh5RVCfj/DJfA9BN
	x5s86jNR+3qTFD9TYEPKOzH5TaocL4t+30TypdxjRYVGuCBSF89ZL3JYk8ybXWdP
	2HBXxNDUNKIY52H6XFTtq5eDJxYKvYA3BepZULCxBk8xlDM0LYJhphJ4jbnaB2do
	BBa9XXH1Lha6uliQ1SziTA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1763685638; x=
	1763772038; bh=BWrF0R3qQL8kwm9npP1EvAhcAZRE+BA2fEO0OQij6hY=; b=W
	6/D/ImpsP6E8UHOnHw0GHkvwQhWlYdOrwXFehCZFo9BlwYpK5+GOeFWB33eaI72c
	o2iReqsiKaZ6t9qjAjpN0Xy115KlGnR65KX+g5UzbVBd/rcQlaiz8hiLAqer98qQ
	XFoirt/2+8WdsP7ETLVokZeBr04/nTxLN1HgtZrk2DDl7wrTRs8onknGjWKUWLnj
	5TIODtgQLz3kfaCb4wP0kgI7O8Hg2ukyYnBZhW4Sf5Xwx3Si8Z8pE8LMGUWysWV9
	EbfxOHrI0s9K+yzOiA+ZKd4nSgH24XQr7oMuDcKfWL0sRgLVy6W4btuveDFkKOyb
	MNY477StKsGD7B911h8LA==
X-ME-Sender: <xms:BLUfaTcu-W1ZbFNKOZl9hEoK5kM2iKVgFY7hi_qwxdijBO8eYSBaQA>
    <xme:BLUfaUDr4NrEmO5B9_8l2v3n4jQbNvi6XEqlmD-9LLSydDnUnrnRawFKgPpvTMRYP
    Y7434dwhOkYoKdQMRD7qq4WJ2pf5tck8RcL6wMx-_En2tJAQ-vQQQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggddvvdekheehucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
    gurhepofggfffhvfevkfgjfhfutgfgsehtjeertdertddtnecuhfhrohhmpedftehlvgig
    ucghihhllhhirghmshhonhdfuceorghlvgigsehshhgriigsohhtrdhorhhgqeenucggtf
    frrghtthgvrhhnpefgfeeflefggfffveffteetiedvtedtgfdvieevfeejfeefffevteej
    tedufffgveenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhroh
    hmpegrlhgvgiesshhhrgiisghothdrohhrghdpnhgspghrtghpthhtohepfeefpdhmohgu
    vgepshhmthhpohhuthdprhgtphhtthhopehjohhroheskegshihtvghsrdhorhhgpdhrtg
    hpthhtoheptghhrhhishhtihgrnhdrkhhovghnihhgsegrmhgurdgtohhmpdhrtghpthht
    oheprhhosghinhdrmhhurhhphhihsegrrhhmrdgtohhmpdhrtghpthhtoheplhhoghgrnh
    hgseguvghlthgrthgvvgdrtghomhdprhgtphhtthhopegshhgvlhhgrggrshesghhoohhg
    lhgvrdgtohhmpdhrtghpthhtohepkhgvvhhinhdrthhirghnsehinhhtvghlrdgtohhmpd
    hrtghpthhtohepvhhivhgvkhdrkhgrshhirhgvugguhiesihhnthgvlhdrtghomhdprhgt
    phhtthhopegrgigsohgvsehkvghrnhgvlhdrughkpdhrtghpthhtohepghhushhtrghvoh
    grrhhssehkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:BLUfaf3IMN_DjSt37FnR5cC7cKZKzm-Evis2a5redpwD9gpwNa4Mgw>
    <xmx:BLUfabfYFOLIxRZxj2GcfZQhMAJrV3AvzpNs5lf-FrATezIBt46vVw>
    <xmx:BLUfab6kKk0AxJC9j7DElLBpacsb7lCfW4srcPj5EWec1IZ1DQymrg>
    <xmx:BLUfaYhbHXAT2tIz3nE8TBsZFON8yBhxofv_cAOU6AX3rp4HzrS3QQ>
    <xmx:BrUfaRbHrZD02fwIphP49SQDR9cZINb17knsJOrpHoo-8nVEkFZAnwDT>
Feedback-ID: i03f14258:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
	id BD7C115C0053; Thu, 20 Nov 2025 19:40:36 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
X-ThreadId: AE6BP-1UiBv7
Date: Thu, 20 Nov 2025 17:40:15 -0700
From: "Alex Williamson" <alex@shazbot.org>
To: "Jason Gunthorpe" <jgg@ziepe.ca>
Message-Id: <cd6f8c6b-6950-4b06-8f2d-bb4ead660ead@app.fastmail.com>
In-Reply-To: <20251121002344.GC233636@ziepe.ca>
References: <20251120-dmabuf-vfio-v9-0-d7f71607f371@nvidia.com>
 <20251120-dmabuf-vfio-v9-10-d7f71607f371@nvidia.com>
 <20251120170413.050ccbb5.alex@shazbot.org> <20251121002344.GC233636@ziepe.ca>
X-Spamd-Bar: ---
X-MailFrom: alex@shazbot.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: YUVAM5BQBHO7N4GKJADWWKZNRZOYO6VI
X-Message-ID-Hash: YUVAM5BQBHO7N4GKJADWWKZNRZOYO6VI
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:01:09 +0000
CC: Leon Romanovsky <leon@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Jens Axboe <axboe@kernel.dk>, Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Kees Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, Ankit Agrawal <ankita@nvidia.com>, Yishai Hadas <yishaih@nvidia.com>, Shameer Kolothum <skolothumtho@nvidia.com>, Kevin Tian <kevin.tian@intel.com>, Krishnakant Jaju <kjaju@nvidia.com>, Matt Ochs <mochs@nvidia.com>, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, linux-block@vger.kernel.org, iommu@lists.linux.dev, linux-mm@kvack.org, linux-doc@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, linux-harden
 ing@vger.kernel.org, Vivek Kasireddy <vivek.kasireddy@intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v9 10/11] vfio/pci: Add dma-buf export support for MMIO regions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YUVAM5BQBHO7N4GKJADWWKZNRZOYO6VI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [0.60 / 15.00];
	DATE_IN_PAST(1.00)[3518];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[shazbot.org : SPF not aligned (relaxed), No valid DKIM,none];
	XM_UA_NO_VERSION(0.01)[];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[32];
	NEURAL_SPAM(0.00)[0.168];
	ARC_NA(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FROM_NEQ_ENVFROM(0.00)[alex@shazbot.org,linaro-mm-sig-bounces@lists.linaro.org];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: 56A2F410B01
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Nov 20, 2025, at 5:23 PM, Jason Gunthorpe wrote:
> On Thu, Nov 20, 2025 at 05:04:13PM -0700, Alex Williamson wrote:
>
>> @@ -2501,7 +2501,7 @@ static int vfio_pci_dev_set_hot_reset(struct vfio_device_set *dev_set,
>>  err_undo:
>>         list_for_each_entry_from_reverse(vdev, &dev_set->device_list,
>>                                          vdev.dev_set_list) {
>> -               if (__vfio_pci_memory_enabled(vdev))
>> +               if (vdev->vdev.open_count && __vfio_pci_memory_enabled(vdev))
>>                         vfio_pci_dma_buf_move(vdev, false);
>>                 up_write(&vdev->memory_lock);
>>         }
>> 
>> Any other suggestions?  This should be the only reset path with this
>> nuance of affecting non-opened devices.  Thanks,
>
> Seems reasonable, but should it be in __vfio_pci_memory_enabled() just
> to be robust?

__vfio_pci_memory_enabled() currently only requires holding memory_lock, I don't think we want to create a dependency on dev_set->lock for this unique call path.  Thanks,

Alex
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
