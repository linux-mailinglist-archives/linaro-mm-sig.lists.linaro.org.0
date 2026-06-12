Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id AfJeMvJDLGpgOgQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Jun 2026 19:37:54 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 5083367B653
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Jun 2026 19:37:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=shazbot.org header.s=fm3 header.b=iCyxNzMl;
	dkim=fail ("body hash did not verify") header.d=messagingengine.com header.s=fm1 header.b="F Fr3U79";
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=shazbot.org (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6ADCD40A55
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Jun 2026 17:37:53 +0000 (UTC)
Received: from fout-a2-smtp.messagingengine.com (fout-a2-smtp.messagingengine.com [103.168.172.145])
	by lists.linaro.org (Postfix) with ESMTPS id 3A58A3F7FF
	for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Jun 2026 17:37:41 +0000 (UTC)
Received: from phl-compute-06.internal (phl-compute-06.internal [10.202.2.46])
	by mailfout.phl.internal (Postfix) with ESMTP id B0C91EC0212;
	Fri, 12 Jun 2026 13:37:40 -0400 (EDT)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-06.internal (MEProxy); Fri, 12 Jun 2026 13:37:40 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=shazbot.org; h=
	cc:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm3; t=1781285860;
	 x=1781372260; bh=3VYWrfjs01T0HYMxtoCq7P5BfvZQ30t2M5ITr0uVGYs=; b=
	iCyxNzMlJVT7dc+aJ1HyGHM6PQHg3v3snzeXlHF6DihxEQybJLHUk+DcOs3oEmzA
	iWZ8ggN22oRiiK2A6NaVlOQB3yk3oi9WrK8Ub8bH68jcaIJziQdFouqpLxsNwhu6
	fkeeDvWrT0s6AvZOKfEMIEBQ/utO4s8JUPkfg4Hrt7YWWNiM0tbFWtUBFTgabPyj
	g2h+hIL6nHIRGsdlbpnlF60TH+NJqihIChHoi6N53QKgtM7kCjmeDl0HbbdtjoI+
	u01WfikGuhhmBfw61wz073okYTtLqEEQFLbz+8jl/ik6cgKbt6vjCCC2y6vgGGcm
	y5b1RVG/BmfYrIcVWTWRSQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1781285860; x=
	1781372260; bh=3VYWrfjs01T0HYMxtoCq7P5BfvZQ30t2M5ITr0uVGYs=; b=F
	Fr3U79TvLQjj1ipEwQCF8lDE5xaXT9dDBiP9WBHsQGIQWlMw5ZbbmJwHHteCSUyR
	f9I79GT9JBK9VdUUsbZHKtbdGFs7ZV+zgs4xKLndVHAhjtnbOphPBaEPWx48yw26
	eDcrNDbSawn+G/8HIhkTpJdPkIHVMrlz5wP+0ZUK3HsoBCnvgCdpuvYHNP6ubEGC
	nZivXR25GiUUeigfNGT0gqGHAJr6tBt5pVjWNvAy8qusryNmJpZlP0JnjY+0IuzT
	QcdazJoplpmMGU69evHdr9/c8FkZoSAHePfqMSstYRDZnVPJd2jJHmJGqdm4ICqO
	IW9PMzRlIn+GHpG49iTIQ==
X-ME-Sender: <xms:40Msak5HBHkg-zeSR5GI6ns-o6YRj-cZze1oByOxGS7XVfltnvLrHQ>
    <xme:40MsahlAbctWIczDo5ihoVcT0fbdTv79lN_0RNwpaFHm8dOszfVZVxZ2vyYIU4aMZ
    2syho6S5wikcZrJDPW1dZAqSUO1YTvgXKeWRf6mLxZQzlYvdDG6Rg>
X-ME-Received: <xmr:40MsauIZbyZ1Pvt7KEwJ9Moo3QyqybuGKte5PGCSSXxl3vh096f7BNONPbw>
X-ME-Proxy-Cause: dmFkZTGoJQ8Lj+EDNN4hBQbznq/Yu29egQv6IxwZgvmjRMEYwcoQM2PY8Gx9pC5GfESZpI
    kbAq4sPedK8oiBdm7HZocnVtAYCQnz/MIZjclfarg7A/gqRUc5qAOpmh6thy7PcxH4zm/r
    jgYWYhufPeSHOdD9y9ltUC87YJFH5U48fWALEtJHQibyi1YGDYd6sm8Y4jPFV5QGG7G96E
    PF41HLNUvzODtqjMcyVp57mEIuUnDsUzNp+JeerUU5ussJDLmHU8mWqM89nDnGuzd7zU08
    zdrK2gvAbUslZQHHb+UNIsLUlwwnd3cSUlJsMhLkLL0S+aUrCW81QKL8FMougNkiuwLsmr
    xGa6mNUvgG64EHYj+IoV9fT67Q1WVobxX1X41d8ETPstbKjm+HkyfyBvM2TzLphFTcC4yj
    ZPSAJMYOmBLWXpvCEywX4eCylhb0Yuzy5ywLqnusbm0vhthrofM30d5lPS8m7hpIs+OK4E
    F74MsFXblySS+1WRtk14nAZBk+lf3kyUDL4M3LDewjjtUJpoD00k034eb/ehIlbBK62+4E
    4BpDdD3GHGcG4Guxkd0bqX9KP3atd2HiDcAcDaEZwh9P2pb+yDT9WLp98Ov0CNHvJ15+q1
    jNWAQtzbUBN7bdxWEcDA6JmSEqRAyIhB3/nNT1klgtjkpiCAJM79rKYwGBMg
X-ME-Proxy: <xmx:40MsaqFYEdXblsSoFvOxothyefVugzEAo_GVjiEOIaUuN7ANMwxyTQ>
    <xmx:40MsanOiLOn3zrSV4_FlMtmwwIFJrnqMOkP5rn8nxgYL2QID-eWLLA>
    <xmx:40Msas-N1E9snrI29D--02dXmRvv7rcr2U2GygY8380oxUe6lAOPzA>
    <xmx:40Msas6thAB3Nc67B_yTiFomVZYej913J2hUdjx827h0aarRAnE7sw>
    <xmx:5EMsaoNte4z6cXBVhix--ioay-2X1Qeuq3SMwr7OxY7wLFHpKX1WOo6v>
Feedback-ID: i03f14258:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 12 Jun 2026 13:37:37 -0400 (EDT)
Date: Fri, 12 Jun 2026 11:37:35 -0600
From: Alex Williamson <alex@shazbot.org>
To: Pranjal Shrivastava <praan@google.com>
Message-ID: <20260612113735.79518b15@shazbot.org>
In-Reply-To: <aisa6H-a-176MXhC@google.com>
References: <20260610154327.37758-1-matt@ozlabs.org>
	<20260610154327.37758-3-matt@ozlabs.org>
	<aisa6H-a-176MXhC@google.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Spamd-Bar: ---
Message-ID-Hash: RET6G6R6QAETGD5DQNINIMIG4GJLLP3Q
X-Message-ID-Hash: RET6G6R6QAETGD5DQNINIMIG4GJLLP3Q
X-MailFrom: alex@shazbot.org
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Matt Evans <matt@ozlabs.org>, Leon Romanovsky <leon@kernel.org>, Jason Gunthorpe <jgg@nvidia.com>, Alex Mastro <amastro@fb.com>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?UTF-8?B?Qmo=?= =?UTF-8?B?w7ZybiBUw7ZwZWw=?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, linux-pci@vger.kernel.org, alex@shazbot.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 2/9] vfio/pci: Add a helper to look up PFNs for DMABUFs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RET6G6R6QAETGD5DQNINIMIG4GJLLP3Q/>
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
	R_DKIM_REJECT(1.00)[shazbot.org:s=fm3,messagingengine.com:s=fm1];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[shazbot.org : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:praan@google.com,m:matt@ozlabs.org,m:leon@kernel.org,m:jgg@nvidia.com,m:amastro@fb.com,m:christian.koenig@amd.com,m:bhelgaas@google.com,m:logang@deltatee.com,m:mngyadam@amazon.de,m:dmatlack@google.com,m:bjorn@kernel.org,m:sumit.semwal@linaro.org,m:kevin.tian@intel.com,m:ankita@nvidia.com,m:apopple@nvidia.com,m:vivek.kasireddy@intel.com,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:kvm@vger.kernel.org,m:linux-pci@vger.kernel.org,m:alex@shazbot.org,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[shazbot.org:-,messagingengine.com:-];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[alex@shazbot.org,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alex@shazbot.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5083367B653

On Thu, 11 Jun 2026 20:30:32 +0000
Pranjal Shrivastava <praan@google.com> wrote:

> On Wed, Jun 10, 2026 at 04:43:16PM +0100, Matt Evans wrote:
> > +	/*
> > +	 * If we get here, the address fell outside of the span
> > +	 * represented by the (concatenated) ranges.  Setup of a  
> 
> Nit: double space before "Setup" and "But" below.

Some of us old school'ers consider this proper writing style ;)

Alex

> > +	 * mapping must ensure that the VMA is <= the total size of
> > +	 * the ranges, so this should never happen.  But, if it does,
> > +	 * force SIGBUS for the access and warn.
> > +	 */
> > +	WARN_ONCE(1, "No range for addr 0x%lx, order %d: VMA 0x%lx-0x%lx pgoff 0x%lx, %u ranges, size 0x%zx\n",
> > +		  address, order, vma->vm_start, vma->vm_end, vma->vm_pgoff,
> > +		  priv->nr_ranges, priv->size);
> > +
> > +	return -EFAULT;  
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
