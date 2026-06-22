Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id yXkPC7HBOWpIxAcAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Jun 2026 01:13:53 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A37816B2CC6
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Jun 2026 01:13:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=shazbot.org header.s=fm3 header.b=WUziQHNE;
	dkim=fail ("body hash did not verify") header.d=messagingengine.com header.s=fm1 header.b="O V4/ZkV";
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=shazbot.org (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5005D3F6B6
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 22 Jun 2026 23:13:51 +0000 (UTC)
Received: from fout-b8-smtp.messagingengine.com (fout-b8-smtp.messagingengine.com [202.12.124.151])
	by lists.linaro.org (Postfix) with ESMTPS id 80AE13F6B6
	for <linaro-mm-sig@lists.linaro.org>; Mon, 22 Jun 2026 23:13:40 +0000 (UTC)
Received: from phl-compute-01.internal (phl-compute-01.internal [10.202.2.41])
	by mailfout.stl.internal (Postfix) with ESMTP id 8D0601D0007E;
	Mon, 22 Jun 2026 19:13:39 -0400 (EDT)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-01.internal (MEProxy); Mon, 22 Jun 2026 19:13:40 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=shazbot.org; h=
	cc:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm3; t=1782170019;
	 x=1782256419; bh=uucNtPV0I4MmovhtQhP25ytZEAiupQRi/0ihEK8Rhgo=; b=
	WUziQHNE7zVmdQgAmci+JZYcwo5KkO7QkV18LNAwi7KpDkmZNhnzcYFcpJ3s0i/M
	vNREOL3IJz7PpYtITSnURTXJ57NoKKtI3p8VdnvvqSByGNgqwb1K7ZYv4LWzS4RA
	eGv77QMZNsNPOKWuMvM1u/Y/vGWVhPMaP4pDOjOppZPTk4Lo8pCwb1U285lX0mlr
	LU5wlhsrTvA9a/4vuG0IS2vA4/tzWFQ4hyAGJv1Ote0P448ilKVTwjoqLvmTgETJ
	OwMJ5DwEQcB9yyC8YwngLajZNQPzFpYXW2VCjtXQQhw2J+Nfuchc5nhLAyh1pFhZ
	DlkzfMuA+M+8++cskbekUg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1782170019; x=
	1782256419; bh=uucNtPV0I4MmovhtQhP25ytZEAiupQRi/0ihEK8Rhgo=; b=O
	V4/ZkVegwfYWhFi0CV7x3abQDcI+EMvP45aV65xUXGtBskn14RQSorce+nkWRjYT
	0vUGzsysby5GrQmfBqRPvk3q5Sw0hugavUFZKFpoMMgcv9AU1yvyy3W+nImUH7kS
	SjZ9hUrIx21b1w8iKUk4ZoSZZ/hyni3dzn4Y4rW/Tn+KmJFahhUaGlLCJ1HEtbsZ
	liIrrHtxpgMUXWhG1yE0zc/1ID7ryZkyO6/L5edSt0ZPnpaOSBMp3f1FUifbx8QE
	yLCSp9BFxoc1A92qOC7tdkgtmNtqVDR+ZbZx8lN2afLKCauJBD5nDne8uBZD5W1f
	9+CUmnJk4mdEJL7Aasgxw==
X-ME-Sender: <xms:osE5amVAIHeztFw-x6Jk2cu55pC7pZjRmwM1b6KSRuWDVIR_KTwJvg>
    <xme:osE5auT4VLIfXIAUlUSHsDevdDOku6mOhxO5YVA14ZP6wQU4fUtEtfDHpEMcONgLa
    IyEYJJ6uwCk3lY4ms7SZGpQuP2VZ8TxsKa5tcvL7lJN_k22wfgP4A>
X-ME-Received: <xmr:osE5alEqQwwWFiCYO4WZS1y5iWQi4KDBwYCSMyaTEHpytxplrQpDKe4ePGE>
X-ME-Proxy-Cause: dmFkZTGuB1iEvMd+xObr0XHRyjLZ564bpkukI0Iv4VBGAc8kgQK8balQPxjO1J5KLzYhKR
    605IkjMxDcJA3PQXGOzAsP/a2qqkAveVav1mQz9sz74ejDOcAB1nKTxQ7Az8dn9NDB7h8n
    +L2GIz2S0KD7QFR9SCO4MwHg5bwilIvRQO7bD+P5oYMomqi4MEOeSdsCHP7Rf6V1uHGLX2
    l7K4NU176pHC8FwN4H4t7mIC+q15Zr24Jg9CULQ0OPMN5s1BgXLPViD1WwvdGiaSncZTkr
    vUvs/iZX+9xQgrK4KW+Mao1JDSNl0pLKn1jUH20f08qmwfuaHj/qztG6zl30Uq93PjoxQZ
    wS77CvLYhcgPkDVyh4OTwLfcbYCQBsP49N/qo4B5pGr3VrP4wC3EX/HMbpI0o7tnDHb8Vr
    dUC4KsTR3XohX349NH0qkcYTAnuTvQmU/XTH8vCSFrDenwTlit8BbuyrmZseJPmljYQw3o
    PWcMojRyNylo1GmUE6eVDYC9by8NKCN+P0P1PQ5Ihrtv1L5gGdXsmSAS4/IA5pgOjuwoIi
    NSBRh+8VABI8itiZZG5BczewX+sa5k66o9ZINFwJJwvHN0vYAKq36XZ/yTRhj3byJ0e9qU
    HKnIZbA0Hu543idA6+zPiDc8rMNS/K44j7bYaQUhGnsbNgzDb/OZthtS+zpQ
X-ME-Proxy: <xmx:osE5auQRdJ-u5l69g5wM4Vu2WcHAuhdDct942-89KQW2FN0yytXFAA>
    <xmx:osE5avq1a6u06jjKTm1185wY59wOCaNiXYckcLCmpR46D3RNQpZi4w>
    <xmx:osE5akoor8Je3GunK-NO3i0DgcNRVxJ6W3IxDvfEK4Pb1RMhly4orw>
    <xmx:osE5ai32xmGiXLj6RW-XweJ-e7SwioBikp0RZ0FO4IbKQbCKHT5hNQ>
    <xmx:o8E5al5-Lz15wn6QttNoyZquTps-g1qYfxAJNhiR6Nk3RW_7DR1N8Mu8>
Feedback-ID: i03f14258:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 22 Jun 2026 19:13:37 -0400 (EDT)
Date: Mon, 22 Jun 2026 17:13:36 -0600
From: Alex Williamson <alex@shazbot.org>
To: Matt Evans <matt@ozlabs.org>
Message-ID: <20260622171336.7d13f548@shazbot.org>
In-Reply-To: <55ea7422-08d8-4c92-aa59-8ff6f9e9d781@ozlabs.org>
References: <20260610154327.37758-1-matt@ozlabs.org>
	<20260610154327.37758-7-matt@ozlabs.org>
	<aixgZQiBQKgS7yIM@google.com>
	<DM6PR11MB3690489DB5FA611413BF60558CE52@DM6PR11MB3690.namprd11.prod.outlook.com>
	<ajGbRE3WWJxNxcrg@google.com>
	<BYAPR11MB3687AE280241C9E00B46FCF98CE42@BYAPR11MB3687.namprd11.prod.outlook.com>
	<24f34e59-7c3b-4b56-83bf-cb07e3f369a6@ozlabs.org>
	<20260619133116.GB278945@nvidia.com>
	<55ea7422-08d8-4c92-aa59-8ff6f9e9d781@ozlabs.org>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Spamd-Bar: ---
Message-ID-Hash: 26MW7LWRKW4NNVZDZ7SWQJXBT6MFIYVF
X-Message-ID-Hash: 26MW7LWRKW4NNVZDZ7SWQJXBT6MFIYVF
X-MailFrom: alex@shazbot.org
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Jason Gunthorpe <jgg@nvidia.com>, "Tian, Kevin" <kevin.tian@intel.com>, Pranjal Shrivastava <praan@google.com>, Leon Romanovsky <leon@kernel.org>, Alex Mastro <amastro@fb.com>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Ankit Agrawal <ankita@nvidia.com>, Alistair Popple <apopple@nvidia.com>, "Kasireddy, Vivek" <vivek.kasireddy@intel.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "kvm@vger.kernel.org" <kvm@vger.kernel.org>, "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>, alex@shazbot.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 6/9] vfio/pci: Clean up BAR zap and revocation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/26MW7LWRKW4NNVZDZ7SWQJXBT6MFIYVF/>
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
	FORGED_RECIPIENTS(0.00)[m:matt@ozlabs.org,m:jgg@nvidia.com,m:kevin.tian@intel.com,m:praan@google.com,m:leon@kernel.org,m:amastro@fb.com,m:christian.koenig@amd.com,m:bhelgaas@google.com,m:logang@deltatee.com,m:mngyadam@amazon.de,m:dmatlack@google.com,m:bjorn@kernel.org,m:sumit.semwal@linaro.org,m:ankita@nvidia.com,m:apopple@nvidia.com,m:vivek.kasireddy@intel.com,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:kvm@vger.kernel.org,m:linux-pci@vger.kernel.org,m:alex@shazbot.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER(0.00)[alex@shazbot.org,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[23];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[shazbot.org:-,messagingengine.com:-];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[alex@shazbot.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ozlabs.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A37816B2CC6

On Fri, 19 Jun 2026 16:13:17 +0100
Matt Evans <matt@ozlabs.org> wrote:

> Hi Jason,
> 
> On 19/06/2026 14:31, Jason Gunthorpe wrote:
> > On Thu, Jun 18, 2026 at 05:02:58PM +0100, Matt Evans wrote:
> >   
> >> My understanding is that the sequences above wake a device that happens
> >> to have previously been put into D3, and AFAICT it could only have got
> >> there because of a previous vfio_pci_set_power_state().  Seems its only
> >> caller is from the emulation of PCI_PM_CTRL using
> >> vfio_lock_and_set_power_state(), and this zaps/revokes BAR access before
> >> a transition to D3.  Similarly, an attempt to access a BAR via an
> >> ioctl/through vfio_pci_core_do_io_rw() fails the D3 check in
> >> __vfio_pci_memory_enabled(), and besides will try to take the memory_lock.  
> > 
> > I thought the general design was the bars were made inaccessible
> > before going to a low power state, and remain inaccessible while it is
> > in low power?
> > 
> > So the order of D0 doesn't matter. If it is not in D0 then there is no
> > mappings and zap/revoke is a NOP.
> > 
> > If is it in D0 then it doesn't matter because D0 is a nop.  
> Yes, that's what I'm getting at. :)  If it's in D3 then BARs are
> inaccessible, so as long as we go into D0 before the DMABUF move, the
> order of the zap relative to the "go to D0" doesn't matter.

I believe this is correct as well, but importantly we cannot assume
that a stray read or write just returns -1 or gets dropped.  This is
exactly why we have such hard protections against the user accessing
the device while it's disabled.  Not all platforms, even within
architectures that might otherwise be considered lenient of such
accesses, consider this benign and might escalate to system level
faults.

Let's be careful not to frame this as "the access doesn't matter
anyway", the answer is instead that non-D0 devices already lack any
mappings to access the device.  Thanks,

Alex
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
