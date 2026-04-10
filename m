Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2MwdMytl5mlmvwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:40:59 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 60FE2431CE7
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:40:59 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 694B5406B4
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:40:58 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 98BDE404B5
	for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Apr 2026 21:01:39 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=JXTTppZX;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of andi.shyti@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=andi.shyti@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 0A43460141;
	Fri, 10 Apr 2026 21:01:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 15C6BC19424;
	Fri, 10 Apr 2026 21:01:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775854898;
	bh=8k+cK41OdLbgiT4F2k1zDjLX7TALCLcSSuKKXuBD5b0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JXTTppZXN+vGmdnk2DXTuCGh1voIkYp9YeyZ5p3j2xv7T9htCXGGteKGaDSydEDRt
	 eSJweeepxWIhcwsawv2pX61JdAPCdNZW4Sk/Z+fL1frDE92WQkAZL4n3XQ91I//bIe
	 c4nNwR+Ta2Prra1N8RHrMtMixyGTe1fbG9qvaFHDQCZqr+tOebuJcnAyoG5Yh//g1m
	 5U/VMXemnaVONazS2wcmdGOnOBR7XH73+PsznIuBo9PUNgPhv83ucaM3PR8ad582vj
	 Hnm5tlIE/eq5+zWthQuCd3yk+B3T4o8Kwc9c7cqQDtnrbc50plLiIOgudNrv7OtJQJ
	 C5p9QDil4hnJw==
Date: Fri, 10 Apr 2026 23:01:34 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Aniket Randive <aniket.randive@oss.qualcomm.com>
Message-ID: <adlkwQZ_9iR6WkA0@zenone.zhora.eu>
References: <20260410101949.2315058-1-aniket.randive@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260410101949.2315058-1-aniket.randive@oss.qualcomm.com>
X-Spamd-Bar: ---
X-MailFrom: andi.shyti@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: NVH4JRWNF2F34FTVD75JHCRMFVREMY4O
X-Message-ID-Hash: NVH4JRWNF2F34FTVD75JHCRMFVREMY4O
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:39:07 +0000
CC: mukesh.savaliya@oss.qualcomm.com, viken.dadhaniya@oss.qualcomm.com, sumit.semwal@linaro.org, christian.koenig@amd.com, linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, naresh.maramaina@oss.qualcomm.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH V4] i2c: qcom-geni: Avoid extra TX DMA TRE for single read message in GPI mode
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NVH4JRWNF2F34FTVD75JHCRMFVREMY4O/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [2.99 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	DATE_IN_PAST(1.00)[236];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[12];
	DKIM_TRACE(0.00)[kernel.org:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.992];
	FROM_NEQ_ENVFROM(0.00)[andi.shyti@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,qualcomm.com:email,zenone.zhora.eu:mid]
X-Rspamd-Queue-Id: 60FE2431CE7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Aniket,

On Fri, Apr 10, 2026 at 03:49:49PM +0530, Aniket Randive wrote:
> In GPI mode, the I2C GENI driver programs an extra TX DMA transfer
> descriptor (TRE) on the TX channel when handling a single read message.
> This results in an unintended write phase being issued on the I2C bus,
> even though a read transaction does not require any TX data.
> 
> For a single-byte read, the correct hardware sequence consists of the
> CONFIG and GO commands followed by a single RX DMA TRE. Programming an
> additional TX DMA TRE is redundant, causes unnecessary DMA buffer
> mapping on the TX channel, and may lead to incorrect bus behavior.
> 
> Update the transfer logic to avoid programming a TX DMA TRE for single
> read messages in GPI mode.
> 
> Co-developed-by: Maramaina Naresh <naresh.maramaina@oss.qualcomm.com>
> Signed-off-by: Maramaina Naresh <naresh.maramaina@oss.qualcomm.com>
> Signed-off-by: Aniket Randive <aniket.randive@oss.qualcomm.com>

merged to i2c/i2c-host.

Thank you and thanks Mukesh for the review.

Andi
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
