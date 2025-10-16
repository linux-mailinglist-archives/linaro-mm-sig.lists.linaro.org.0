Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 381F7BE34DB
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Oct 2025 14:17:43 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DC201454EA
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Oct 2025 12:17:40 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 66151454D2
	for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Oct 2025 12:17:37 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=PeDtq8Av;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of vkoul@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=vkoul@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id D09A763EF7;
	Thu, 16 Oct 2025 12:17:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0EAADC4CEF1;
	Thu, 16 Oct 2025 12:17:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760617056;
	bh=eQNULmO/I7j0ha8Tji2AaF8Xy3xc/zj3lBAQqeAkCIY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PeDtq8AvGvCVglA9M2ikmOI8PO7aHO6yBJh163Uchzxz4Uq+PU36AxAthB06gDWp4
	 ogSnU2uEB59c8utILPaiIRLM2mi9zkrdMW0cKNcNTGF/FnT9TKTuuMyHT8mDvqIQF0
	 JOQNlk8Mesh7Y35c3Y0EHKMZGPThyZ4IBxMmbuUnSRi4d72eIZ5pDpLancV3u9aGqa
	 vn5Fz2r8VwlMQIfntJTLz+OB0a5atD+6wqYnv36UurfHnBOV2WmAyfcm2qyaJiJv23
	 yutrDRgmvgav2ASShM6A84/0M+coXLU4nVOwEMuU2JIy5tCkWWEfOED5+XR0BcxE4B
	 EnydCU7HpxiLQ==
Date: Thu, 16 Oct 2025 17:47:32 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Andi Shyti <andi.shyti@kernel.org>
Message-ID: <aPDiXIMcdM-Gm_J3@vaman>
References: <20250925120035.2844283-1-jyothi.seerapu@oss.qualcomm.com>
 <20250925120035.2844283-3-jyothi.seerapu@oss.qualcomm.com>
 <3lgris6k6ewqjdcfmmovygstqrqjx2jidtr3hb3v47gpgadkka@wlua7qpd7ahf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3lgris6k6ewqjdcfmmovygstqrqjx2jidtr3hb3v47gpgadkka@wlua7qpd7ahf>
X-Rspamd-Queue-Id: 66151454D2
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.4.254];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.0.0/19, country:SG];
	RCPT_COUNT_TWELVE(0.00)[14];
	ARC_NA(0.00)[];
	DWL_DNSWL_BLOCKED(0.00)[kernel.org:dkim];
	NEURAL_HAM(-0.00)[-0.993];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: GHGT4GOQYQ7WM5NIYIARRLF3Z33MOA4L
X-Message-ID-Hash: GHGT4GOQYQ7WM5NIYIARRLF3Z33MOA4L
X-MailFrom: vkoul@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>, Mukesh Kumar Savaliya <quic_msavaliy@quicinc.com>, Viken Dadhaniya <quic_vdadhani@quicinc.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linux-arm-msm@vger.kernel.org, dmaengine@vger.kernel.org, linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, quic_vtanuku@quicinc.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v8 2/2] i2c: i2c-qcom-geni: Add Block event interrupt support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GHGT4GOQYQ7WM5NIYIARRLF3Z33MOA4L/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On 03-10-25, 20:50, Andi Shyti wrote:
> On Thu, Sep 25, 2025 at 05:30:35PM +0530, Jyothi Kumar Seerapu wrote:
> > From: Jyothi Kumar Seerapu <quic_jseerapu@quicinc.com>
> > 
> > The I2C driver gets an interrupt upon transfer completion.
> > When handling multiple messages in a single transfer, this
> > results in N interrupts for N messages, leading to significant
> > software interrupt latency.
> > 
> > To mitigate this latency, utilize Block Event Interrupt (BEI)
> > mechanism. Enabling BEI instructs the hardware to prevent interrupt
> > generation and BEI is disabled when an interrupt is necessary.
> > 
> > Large I2C transfer can be divided into chunks of messages internally.
> > Interrupts are not expected for the messages for which BEI bit set,
> > only the last message triggers an interrupt, indicating the completion of
> > N messages. This BEI mechanism enhances overall transfer efficiency.
> > 
> > BEI optimizations are currently implemented for I2C write transfers only,
> > as there is no use case for multiple I2C read messages in a single transfer
> > at this time.
> > 
> > Signed-off-by: Jyothi Kumar Seerapu <quic_jseerapu@quicinc.com>
> 
> Because this series is touching multiple subsystems, I'm going to
> ack it:
> 
> Acked-by: Andi Shyti <andi.shyti@kernel.org>
> 
> We are waiting for someone from DMA to ack it (Vinod or Sinan).

Thanks, I will pick it with your ack

-- 
~Vinod
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
