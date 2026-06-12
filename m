Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 8GrPA4JePWoX2AgAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 18:59:46 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A557B6C7A24
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 18:59:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=ozlabs.org header.s=201707 header.b=ZYW3AYN2;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=ozlabs.org (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C500E43BDB
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 16:59:44 +0000 (UTC)
Received: from mail.ozlabs.org (gandalf.ozlabs.org [150.107.74.76])
	by lists.linaro.org (Postfix) with ESMTPS id 6D55E3FDAE
	for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Jun 2026 15:12:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ozlabs.org;
	s=201707; t=1781277119;
	bh=LGhEStMN1twSMyySBf4VeZi6kVB0lNhii41/7Nxgj/o=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=ZYW3AYN2lt0C4fdn5658+N+D5H4ZMpvntD3tZcbQEQ1G1COmkwUF0bYZ/2Ch/N5GA
	 btIJVKOyRJuZI95bEHMsLm3BDQDiWnrTiwYJ1slrBLhFqv0X5u0ASOM2VjrU6tNvDD
	 77qSt3c+ldoLWD1PJzc4aiyTB3OXRtWxcqNYuRTtaaBVm6eGBFDjs1Of0qNtOqT8Et
	 Xq2d6uDzfUf7ZT857fqdvMYnnVsdwi2ACxBnLpiybGowDBvlYUIcBf/O17+TxsCa+l
	 dser9fVVvhuSttx+faBPPLtTv5hgYgE1gs14upSe07vZa5kGsr5APAv6Ugh6mSe0So
	 1BMC3+miyrxPQ==
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 4gcNK46vZgz4x6q;
	Sat, 13 Jun 2026 01:11:52 +1000 (AEST)
Message-ID: <9812ae0f-8f22-4d62-a706-4c7232a5656b@ozlabs.org>
Date: Fri, 12 Jun 2026 16:11:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: "Tian, Kevin" <kevin.tian@intel.com>, Alex Williamson <alex@shazbot.org>,
 Leon Romanovsky <leon@kernel.org>, Jason Gunthorpe <jgg@nvidia.com>,
 Alex Mastro <amastro@fb.com>, =?UTF-8?Q?Christian_K=C3=B6nig?=
 <christian.koenig@amd.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Logan Gunthorpe <logang@deltatee.com>
References: <20260610154327.37758-1-matt@ozlabs.org>
 <DM6PR11MB3690A65EA9D8A9B77AF93E198C182@DM6PR11MB3690.namprd11.prod.outlook.com>
From: Matt Evans <matt@ozlabs.org>
In-Reply-To: <DM6PR11MB3690A65EA9D8A9B77AF93E198C182@DM6PR11MB3690.namprd11.prod.outlook.com>
X-Spamd-Bar: ---
X-MailFrom: matt@ozlabs.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: T6E3RQAKZCBW5N7XI3IQSPURIZSGOU2K
X-Message-ID-Hash: T6E3RQAKZCBW5N7XI3IQSPURIZSGOU2K
X-Mailman-Approved-At: Thu, 25 Jun 2026 16:59:02 +0000
CC: Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Ankit Agrawal <ankita@nvidia.com>, Pranjal Shrivastava <praan@google.com>, Alistair Popple <apopple@nvidia.com>, "Kasireddy, Vivek" <vivek.kasireddy@intel.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "kvm@vger.kernel.org" <kvm@vger.kernel.org>, "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 0/9] vfio/pci: Add mmap() for DMABUFs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/T6E3RQAKZCBW5N7XI3IQSPURIZSGOU2K/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.59 / 15.00];
	R_DKIM_REJECT(1.00)[ozlabs.org:s=201707];
	DATE_IN_PAST(1.00)[313];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[ozlabs.org : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:kevin.tian@intel.com,m:alex@shazbot.org,m:leon@kernel.org,m:jgg@nvidia.com,m:amastro@fb.com,m:christian.koenig@amd.com,m:bhelgaas@google.com,m:logang@deltatee.com,m:mngyadam@amazon.de,m:dmatlack@google.com,m:bjorn@kernel.org,m:sumit.semwal@linaro.org,m:ankita@nvidia.com,m:praan@google.com,m:apopple@nvidia.com,m:vivek.kasireddy@intel.com,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:kvm@vger.kernel.org,m:linux-pci@vger.kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER(0.00)[matt@ozlabs.org,linaro-mm-sig-bounces@lists.linaro.org];
	FORWARDED(0.00)[lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[22];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[ozlabs.org:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[matt@ozlabs.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,ozlabs.org:email,ozlabs.org:mid,ozlabs.org:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A557B6C7A24

Hi Kevin,

On 12/06/2026 09:27, Tian, Kevin wrote:
>> From: Matt Evans <matt@ozlabs.org>
>> Sent: Wednesday, June 10, 2026 11:43 PM
>>
> [...]
>>
>>  vfio/pci: Support mmap() of a VFIO DMABUF
>>
>>    Adds mmap() for a DMABUF fd exported from vfio-pci.
>>
>>    It was a goal to keep the VFIO device fd lifetime behaviour
>>    unchanged with respect to the DMABUFs.  An application can close
>>    all device fds, and this will revoke/clean up all DMABUFs; no
>>    mappings or other access can be performed now.  When enabling
>>    mmap() of the DMABUFs, this means access through the VMA is also
>>    revoked.  This complicates the fault handler because whilst the
>>    DMABUF exists, it has no guarantee that the corresponding VFIO
>>    device is still alive.  Adds synchronisation ensuring the vdev is
>>    available before vdev->memory_lock is touched; this holds the
>>    device registration so that even if the buffer has been cleaned up,
>>    vdev hasn't been freed and so the lock can be safely taken.
>>
>>    This commit makes VFIO_PCI_CORE depend on PCI_P2PDMA_CORE
>> (commit
>>    1) to bring in (only) the P2PDMA provider code.
> 
> the last sentence is stale as the dependency is now added in patch4.

Right, will fix.

>>
>> End
>> ===
>>
>> This is based on VFIO next (e.g. at b9285405c5f6).
>>
> 
> Sashiko failed to apply this series. Is there dependent work in vfio-next?
> 
> otherwise getting a Sashiko review is helpful here.

It _did_ depend on (at least the context of) some fixes in vfio-next.
Looks like it'll rebase on master now those are merged.  I should've
re-checked this for v3, oops. :|

(FWIW, I had Robot Claude Opus 4.8 to review several times up to v3.
But I agree, Sashiko would be interesting too.  Can it be manually
triggered with branch guidance?)


Thanks,


Matt


_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
