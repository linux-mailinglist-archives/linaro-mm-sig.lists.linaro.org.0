Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id FuT5Oi2eQmr++gkAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Jun 2026 18:32:45 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 7296B6DD5C9
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Jun 2026 18:32:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=ozlabs.org header.s=201707 header.b=qh88UNuk;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=ozlabs.org (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 89A0440ABA
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Jun 2026 16:32:44 +0000 (UTC)
Received: from mail.ozlabs.org (gandalf.ozlabs.org [150.107.74.76])
	by lists.linaro.org (Postfix) with ESMTPS id 0ADBC401DB
	for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Jun 2026 16:32:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ozlabs.org;
	s=201707; t=1782750749;
	bh=lEyeCapBsVXYSpplIUA0PN6OvGWLHmv5pdfFL1Phu/8=;
	h=Date:Subject:From:To:Cc:References:In-Reply-To:From;
	b=qh88UNukwFc6dT9j/eKGL1AmHTkKB4THBoN2h8ulr24M43yQI7H2a3DniuYI4YQU/
	 y+sEySwE1m/Yf7Z4VFExs88su0MVH5q9LvDDgm3FgbSwSerHA0qE+99HtFGQuSq59g
	 FxbGAdDGAJa0us+28P1h8SwZbStEfY16odXIDBqOwMFsZRmzUmX3G24DLlJPC9HqMt
	 AlrhiIGH2v4UHN+lsmYX4xgJg8hyB5WUMln6lluFMWJe2rYqxANowUQAhfaoHNwZ4s
	 g1DEDbhTRfl1prBKA0d/k+37/uM3L3gfGP5wgLmM81glk8mKfiDysdxeSh8Nd0lNCJ
	 lz5QMzOgdFabA==
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 4gpsJ43jdmz4x1q;
	Tue, 30 Jun 2026 02:32:20 +1000 (AEST)
Message-ID: <57055684-2008-4ba3-bfa8-674317be1a71@ozlabs.org>
Date: Mon, 29 Jun 2026 17:32:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
From: Matt Evans <matt@ozlabs.org>
To: "Tian, Kevin" <kevin.tian@intel.com>
References: <20260610154327.37758-1-matt@ozlabs.org>
 <20260610154327.37758-9-matt@ozlabs.org>
 <DM6PR11MB3690886693898AD755FB246F8CE52@DM6PR11MB3690.namprd11.prod.outlook.com>
 <31d1265b-e264-4dc6-a8c3-1b64dc9867a1@ozlabs.org>
In-Reply-To: <31d1265b-e264-4dc6-a8c3-1b64dc9867a1@ozlabs.org>
X-Spamd-Bar: ---
Message-ID-Hash: 4L6VBULZT4NSSAUITOM7VBT7Q6NHRIZ4
X-Message-ID-Hash: 4L6VBULZT4NSSAUITOM7VBT7Q6NHRIZ4
X-MailFrom: matt@ozlabs.org
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Alex Williamson <alex@shazbot.org>, Leon Romanovsky <leon@kernel.org>, Jason Gunthorpe <jgg@nvidia.com>, Alex Mastro <amastro@fb.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Ankit Agrawal <ankita@nvidia.com>, Pranjal Shrivastava <praan@google.com>, Alistair Popple <apopple@nvidia.com>, "Kasireddy, Vivek" <vivek.kasireddy@intel.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "kvm@vger.kernel.org" <kvm@vger.kernel.org>, "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 8/9] vfio/pci: Permanently revoke a DMABUF on request
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4L6VBULZT4NSSAUITOM7VBT7Q6NHRIZ4/>
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
	DMARC_POLICY_SOFTFAIL(0.10)[ozlabs.org : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:kevin.tian@intel.com,m:alex@shazbot.org,m:leon@kernel.org,m:jgg@nvidia.com,m:amastro@fb.com,m:christian.koenig@amd.com,m:bhelgaas@google.com,m:logang@deltatee.com,m:mngyadam@amazon.de,m:dmatlack@google.com,m:bjorn@kernel.org,m:sumit.semwal@linaro.org,m:ankita@nvidia.com,m:praan@google.com,m:apopple@nvidia.com,m:vivek.kasireddy@intel.com,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:kvm@vger.kernel.org,m:linux-pci@vger.kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[matt@ozlabs.org,linaro-mm-sig-bounces@lists.linaro.org];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[22];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[matt@ozlabs.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ozlabs.org:-];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7296B6DD5C9

Hi Kevin,


Digging this one up again,

On 17/06/2026 17:08, Matt Evans wrote:
> Hi Kevin,
> 
> On 16/06/2026 10:26, Tian, Kevin wrote:
>>> From: Matt Evans <matt@ozlabs.org>
>>> Sent: Wednesday, June 10, 2026 11:43 PM
>>>
>>> Expand the VFIO DMABUF revocation state to three states:
>>> Not revoked, temporarily revoked, and permanently revoked.
>>>
>>> The first two are for existing transient revocation, e.g. across a
>>> function reset, and the DMABUF is put into the last in response to a
>>> new VFIO feature VFIO_DEVICE_FEATURE_DMA_BUF.
>>
>> VFIO_DEVICE_FEATURE_DMA_BUF_REVOKE
>>
>>>
>>> VFIO_DEVICE_FEATURE_DMA_BUF passes a DMABUF by fd and requests that
>>> the DMABUF is permanently revoked.  On success, it's guaranteed that
>>
>> ditto
> 
> Argh, thanks for catching these.  Fixed.
> 
>>> the buffer can never be imported/attached/mmap()ed in future, that
>>> dynamic imports have been cleanly detached, and that all mappings have
>>> been made inaccessible/PTEs zapped.
>>>
>>> This is useful for lifecycle management, to reclaim VFIO PCI BAR
>>> ranges previously delegated to a subordinate client process: The
>>> driver process can ensure that the loaned resources are revoked when
>>> the client is deemed "done", and exported ranges can be safely re-used
>>> elsewhere.
>>
>> probably clarify that re-use by creating a new dmabuf fd as the original
>> one is essentially zombie now.
> 
> Reworded this, plus added a note re the change below.
> 
>>>
>>> +/* Set the DMABUF's revocation status (OK or temporarily/permanently
>>> revoked) */
>>> +static void vfio_pci_dma_buf_set_status(struct vfio_pci_dma_buf *priv,
>>> +					enum vfio_pci_dma_buf_status
>>> new_status)
>>> +{
>>> +	bool was_revoked;
>>> +
>>> +	lockdep_assert_held_write(&priv->vdev->memory_lock);
>>> +
>>> +	if (priv->status == VFIO_PCI_DMABUF_PERM_REVOKED ||
>>> +	    priv->status == new_status) {
>>> +		return;
>>> +	}
>>
>> the only interface to request PERM_REVOKED is via the new ioctl.
>>
>> vfio_pci_core_feature_dma_buf_revoke() returns -EBADFD if
>> it's already in PERM_REVOKED.
>>
>> so this check shouldn't be reached, suggesting a warning.
> 
> Good point, both any change to PERM_REVOKED or a double-set of the same
> state indicate some caller has gone wrong.  Added a warning.

Well, after the D0/D3 reset thread, I noticed while testing that a
double-revoke will naturally happen when cleaning up a buffer that was
already revoked by a device having previously transitioned to D3.

Similarly, cleaning up a buffer that was explicitly (permanently)
revoked leads to an attempt to set TEMP whilst PERM, and this is OK too.

So the only "surprising" case is a buffer already in the PERM_REVOKED
state getting a second PERM_REVOKED (which is weeded out in the caller
as you point out).  Any new caller asking for PERM_REVOKED repeatedly is
odd, but still gets what it wants.  I really don't think a warning is
warranted just for that (it's safe either way).  Sending this
explanation separately, so you are not too disappointed if v4 reverts to
this existing condition above...  :)


Thanks,


Matt


> 
>>> +
>>> +	dma_buf_invalidate_mappings(priv->dmabuf);
>>> +	dma_resv_wait_timeout(priv->dmabuf->resv,
>>> +			      DMA_RESV_USAGE_BOOKKEEP, false,
>>> +			      MAX_SCHEDULE_TIMEOUT);
>>> +	dma_resv_unlock(priv->dmabuf->resv);
>>
>> It's existing code but while at it let's make above conditional to
>> the actual revoke path. for unrevoked it's not required given the
>> previous revoke already cleans up everything.
> 
> I noticed this too though I was consciously trying to keep the diff as
> small as possible.  But with this feedback from both you and Praan, I'll
> move this.  It's still pretty readable before/after.
> 
>> otherwise,
>>
>> Reviewed-by: Kevin Tian <kevin.tian@intel.com>
> 
> 
> Thank you.
> 
> 
> Matt
> 

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
