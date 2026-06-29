Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id NrERLeyqQmrb/QkAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Jun 2026 19:27:08 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 233F76DDB7E
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Jun 2026 19:27:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=ozlabs.org header.s=201707 header.b=DrnVVqD2;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=ozlabs.org (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2ABA840AC8
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Jun 2026 17:27:07 +0000 (UTC)
Received: from mail.ozlabs.org (gandalf.ozlabs.org [150.107.74.76])
	by lists.linaro.org (Postfix) with ESMTPS id 21C6240AA9
	for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Jun 2026 17:26:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ozlabs.org;
	s=201707; t=1782754012;
	bh=y6eTx+9vg9xblvO487zhAd78ZW9yRyedKnZlH9n/Q1A=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=DrnVVqD25H/vFxEfW5d4xHnG7Pc1MM3ub184VCpBbrQ08+Vf4/gSGAFi9Ztv5RPIp
	 +DPnMkZN0Rq1BNhf0To8wcmDt8naUQB/8DUZdLPKIhznKdibD3VFtLP4xlygASScPR
	 jsVI3JtM7hii5yp3iVe3S/QopyVb9AmjDxnbUO6kZpGnB12C8gZHGGf8mnv9GP31s1
	 jGj2WBAOwoUMmvyKZ0acx9Ot5s11nbcNxJo7i0ahlb/jltZ5HKISUIJeH/IQPiAlDQ
	 t1Iw8z5AmbdTwwik49LDPiro0BE7UDScxaB0rz4itKI4TL3Oha7z1PZvGdCOzBO/iz
	 D06sFOHWNMXaA==
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 4gptVs3yzbz4w9j;
	Tue, 30 Jun 2026 03:26:45 +1000 (AEST)
Message-ID: <cc4e8b75-5b25-417c-898b-35b3fa41ccb2@ozlabs.org>
Date: Mon, 29 Jun 2026 18:26:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: "Tian, Kevin" <kevin.tian@intel.com>, Alex Williamson <alex@shazbot.org>,
 Leon Romanovsky <leon@kernel.org>, Jason Gunthorpe <jgg@nvidia.com>,
 Alex Mastro <amastro@fb.com>, =?UTF-8?Q?Christian_K=C3=B6nig?=
 <christian.koenig@amd.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Logan Gunthorpe <logang@deltatee.com>
References: <20260610154327.37758-1-matt@ozlabs.org>
 <20260610154327.37758-7-matt@ozlabs.org>
 <DM6PR11MB3690CA709415069FFA5121838CE52@DM6PR11MB3690.namprd11.prod.outlook.com>
From: Matt Evans <matt@ozlabs.org>
In-Reply-To: <DM6PR11MB3690CA709415069FFA5121838CE52@DM6PR11MB3690.namprd11.prod.outlook.com>
X-Spamd-Bar: ----
Message-ID-Hash: UAM6HXHGBNSMZOKPVSBRZ3GY5WOTTBMJ
X-Message-ID-Hash: UAM6HXHGBNSMZOKPVSBRZ3GY5WOTTBMJ
X-MailFrom: matt@ozlabs.org
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Ankit Agrawal <ankita@nvidia.com>, Pranjal Shrivastava <praan@google.com>, Alistair Popple <apopple@nvidia.com>, "Kasireddy, Vivek" <vivek.kasireddy@intel.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "kvm@vger.kernel.org" <kvm@vger.kernel.org>, "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 6/9] vfio/pci: Clean up BAR zap and revocation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UAM6HXHGBNSMZOKPVSBRZ3GY5WOTTBMJ/>
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
	R_DKIM_REJECT(1.00)[ozlabs.org:s=201707];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[ozlabs.org : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:kevin.tian@intel.com,m:alex@shazbot.org,m:leon@kernel.org,m:jgg@nvidia.com,m:amastro@fb.com,m:christian.koenig@amd.com,m:bhelgaas@google.com,m:logang@deltatee.com,m:mngyadam@amazon.de,m:dmatlack@google.com,m:bjorn@kernel.org,m:sumit.semwal@linaro.org,m:ankita@nvidia.com,m:praan@google.com,m:apopple@nvidia.com,m:vivek.kasireddy@intel.com,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:kvm@vger.kernel.org,m:linux-pci@vger.kernel.org,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[matt@ozlabs.org,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[22];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[ozlabs.org:-];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[matt@ozlabs.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,ozlabs.org:email,ozlabs.org:mid,ozlabs.org:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 233F76DDB7E

Hi Kevin,

On 16/06/2026 10:18, Tian, Kevin wrote:
>> From: Matt Evans <matt@ozlabs.org>
>> Sent: Wednesday, June 10, 2026 11:43 PM
>>
>> Previously, vfio_pci_zap_bars() (and the wrapper
>> vfio_pci_zap_and_down_write_memory_lock()) calls were paired with
>> calls to vfio_pci_dma_buf_move().
>>
>> This commit replaces them with a unified new function,
>> vfio_pci_zap_revoke_bars() containing both the vfio_pci_dma_buf_move()
>> and the unmap_mapping_range(), making it harder for callers to omit
>> one.  It adds a wrapper, vfio_pci_lock_zap_revoke_bars(), which takes
>> the write memory_lock before zapping, and adds a new
>> vfio_pci_unrevoke_bars() for the re-enable path.
> 
> It's unusual to have three verbs (lock/zap/revoke) in one function name.
> 
> I wonder whether it's simpler to have:
> 	vfio_pci_zap_bars_locked() 	// caller already holds the lock
> 	vfio_pci_zap_bars()
> 
> 'revoke' is just a side-effect of 'zap', not necessarily to highlight it in
> the name.

(Just found this one unacknowledged, apologies.)  If you reckon it's a
handful, sure I can shorten them.

As it already has ..._unrevoke_bars(), it makes sense to use
..._revoke_bars() and ..._lock_revoke_bars().  IMHO the zap is a
secondary effect, and "revoke the BARs" means to make them inaccessible
from both DMA and CPU.

I don't want to go down the path of _locked() though right now; I just
want to tidy the current pattern without pulling new duties up to the
call sites.

>> As of "vfio/pci: Convert BAR mmap() to use a DMABUF", the
>> unmap_mapping_range() to zap is no longer performed for vfio-pci since
>> the DMABUFs used for BAR mappings already zap PTEs when the
>> vfio_pci_dma_buf_move() occurs.
>>
>> However, it must be assumed that VFIO drivers which override the .mmap
>> op could create mappings _not_ backed by DMABUFs.  So, the zap is
>> still performed on revoke if .mmap is overridden, using a new
>> zap_bars_on_revoke flag.  A driver can explicitly opt out; the flag is
>> cleared by the hisi_acc_vfio_pci driver, since its .mmap just wraps
>> vfio_pci_core_mmap() and so still uses DMABUFs.
> 
> the cost of unmap_mapping_range() is trivial when there is no mmap
> on the device fd.
> 
> so it could be simpler by always doing:
> 
> 	vfio_pci_dma_buf_move();
> 	unmap_mapping_range();
> 
> and remove the flag.

I did consider this.  I do agree it's cheap, but I still prefer to avoid
unnecessary activities (just to decouple and insulate against things
somehow changing in future).  From previous postings, others didn't seem
to mind the flag approach, at least.

Thanks,


Matt

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
