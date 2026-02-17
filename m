Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ONRmAHMilGmqAAIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 17 Feb 2026 09:10:27 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 63DB0149B96
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 17 Feb 2026 09:10:26 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DFA2E400F8
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 17 Feb 2026 08:10:24 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 87CDF3F79A
	for <linaro-mm-sig@lists.linaro.org>; Tue, 17 Feb 2026 08:10:12 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=P5VdzwvW;
	spf=pass (lists.linaro.org: domain of krzk@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=krzk@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id DF7B743DD2;
	Tue, 17 Feb 2026 08:10:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 37FC4C19424;
	Tue, 17 Feb 2026 08:10:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771315811;
	bh=JES+IBXkN/OopuNkWeM8rDx8cY1hL5qNmn2SSvSLDww=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=P5VdzwvWLXGyzf38GdKR0DP1zmbtvU7hfd3hlDwwRkW80X4l1SWwX85/mwayZB4/i
	 SNrxQLgJxPOUitED/rP9uOf0WeWZdIRg7+iV/SVR3Vaujf3JtmftZDR0u4ab1nywlH
	 ElR11J92kF75uTgTLkjvF1p5qCJu+TSTTDpKcp5z3WMKkTCYKnViNy96BWo6fuWxX1
	 KScScxH49TMGFhxMjUldGPC/sdm2/Mg5ywYdAAmJ7nC+vLcfzIZHfEP+MhH6bP86jL
	 VR7Xml8I39h3w+kxZt/yxdzWvOXuSPJn5BEs/4AyFYkPXjExqMUg+U7GeCux68/TX6
	 nGfyp/ia8y6gg==
Date: Tue, 17 Feb 2026 09:10:09 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Daniel Baluta <daniel.baluta@oss.nxp.com>
Message-ID: <20260217-stirring-warping-partridge-dd9531@quoll>
References: <20260216150205.212318-1-larisa.grigore@oss.nxp.com>
 <20260216150205.212318-10-larisa.grigore@oss.nxp.com>
 <5c0251b6-5228-4077-a21f-4da179949b90@oss.nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5c0251b6-5228-4077-a21f-4da179949b90@oss.nxp.com>
X-Spamd-Bar: ---
Message-ID-Hash: B5V7EEEAO4SG3XG6NFDBVCQAJOIDHI7S
X-Message-ID-Hash: B5V7EEEAO4SG3XG6NFDBVCQAJOIDHI7S
X-MailFrom: krzk@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Larisa Grigore <larisa.grigore@oss.nxp.com>, gregkh@linuxfoundation.org, jirislaby@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, sumit.semwal@linaro.org, christian.koenig@amd.com, chester62515@gmail.com, cosmin.stoica@nxp.com, adrian.nitu@freescale.com, stefan-gabriel.mirea@nxp.com, Mihaela.Martinas@freescale.com, linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org, devicetree@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, s32@nxp.com, imx@lists.linux.dev, clizzi@redhat.com, aruizrui@redhat.com, eballetb@redhat.com, echanude@redhat.com, jkangas@redhat.com, Radu Pirea <radu-nicolae.pirea@nxp.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 09/13] dt-bindings: serial: fsl-linflexuart: add dma properties
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/B5V7EEEAO4SG3XG6NFDBVCQAJOIDHI7S/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	FREEMAIL_CC(0.00)[oss.nxp.com,linuxfoundation.org,kernel.org,linaro.org,amd.com,gmail.com,nxp.com,freescale.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev,redhat.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,dt];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	REDIRECTOR_URL(0.00)[aka.ms];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,aka.ms:url,linaro.org:email]
X-Rspamd-Queue-Id: 63DB0149B96
X-Rspamd-Action: no action

On Mon, Feb 16, 2026 at 05:29:57PM +0200, Daniel Baluta wrote:
> 
> On 2/16/26 17:02, Larisa Grigore wrote:
> > [You don't often get email from larisa.grigore@oss.nxp.com. Learn why this is important at https://aka.ms/LearnAboutSenderIdentification ]
> >
> > From: Radu Pirea <radu-nicolae.pirea@nxp.com>
> >
> > Add 'dmas' and 'dma-names' properties to describe optional DMA support
> > for RX and TX channels in the LINFlexD UART controller.
> >
> > This allows the device tree to specify DMA channels used for UART data
> > transfers. If not specified, the driver will fall to interrupt-based
> > operations.
> >
> > Signed-off-by: Radu Pirea <radu-nicolae.pirea@nxp.com>
> > Co-developed-by: Larisa Grigore <larisa.grigore@oss.nxp.com>
> > Signed-off-by: Larisa Grigore <larisa.grigore@oss.nxp.com>
> 
> If both of you worked on this patch then the last lines must read:
> 
> Co-developed-by: Radu Pirea <radu-nicolae.pirea@nxp.com>
> 
> Signed-off-by: Radu Pirea <radu-nicolae.pirea@nxp.com>
> 
> Co-developed-by: Larisa Grigore <larisa.grigore@oss.nxp.com>
> 
> Signed-off-by: Larisa Grigore <larisa.grigore@oss.nxp.com>

No, the DCO with this authorship is correct if they both worked. Nothing
has to be changed here.

Best regards,
Krzysztof

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
