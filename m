Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id DjzpDUdlKmrIogMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Jun 2026 09:35:35 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id AE61866F6AD
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Jun 2026 09:35:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=kernel.org header.s=k20260515 header.b="Z01QBw/h";
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=kernel.org (policy=quarantine)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3E6B740A03
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Jun 2026 07:35:33 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 868E93F811
	for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Jun 2026 07:35:20 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id D79B56020A;
	Thu, 11 Jun 2026 07:35:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0E3651F00893;
	Thu, 11 Jun 2026 07:35:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781163319;
	bh=mo/64/HPY/6XXdxYXG0j1Rf2IH961OLjSb7/zYXIAp0=;
	h=Date:From:To:Subject:In-Reply-To:References:Cc;
	b=Z01QBw/hVD0yzmyR9h/PeeyZ0iRCgAk+/aPcn16UqS3zZfuWeP7a6qWfdqmwQ64c7
	 SUPKR2ROzkbXWRdLbWoisYB51wZF40L8vvw0MozUehUzOXbcsSsnQ0fbgMJJmCHGkW
	 z+TuJ9RV3obUIo8CPP/tRZUPc5Hs7F5upTIG6t0fkoVPZxquwXwNgAinfjXUhvkvqU
	 6YeQ2LjisVMoDUHycAma+Lu74RYAWxQFblvBsWwIvRFb7/kKDiutnbSyvdf+3vpuqS
	 Dp2GHlTRm5vmXa5cb7jZrXcCPOVrqwZElTLvCkH94I9VrnrjiQ9+mME23BBp+rSEGk
	 5s8EcKr+hihgQ==
Message-ID: <c52f5bc48973b580c8df41764acb73e4@kernel.org>
Date: Thu, 11 Jun 2026 07:35:17 +0000
From: "Maxime Ripard" <mripard@kernel.org>
To: "Sumit Semwal" <sumit.semwal@linaro.org>
In-Reply-To: <20260610142329.3836808-1-sumit.semwal@linaro.org>
References: <20260610142329.3836808-1-sumit.semwal@linaro.org>
X-Spamd-Bar: ----
Message-ID-Hash: EG54UGPYPKBMGIMZ5NKP3WUCKY2JZDCY
X-Message-ID-Hash: EG54UGPYPKBMGIMZ5NKP3WUCKY2JZDCY
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Brian.Starkey@arm.com, afd@ti.com, agordeev@linux.ibm.com, arnd@linaro.org, benjamin.gaignard@collabora.com, chleroy@kernel.org, christian.koenig@amd.com, djbw@kernel.org, dri-devel@lists.freedesktop.org, gerald.schaefer@linux.ibm.com, hch@infradead.org, jgg@ziepe.ca, jiri@resnulli.us, jstultz@google.com, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-s390@vger.kernel.org, linuxppc-dev@lists.ozlabs.org, lkp@intel.com, maddy@linux.ibm.com, mpe@ellerman.id.au, Maxime Ripard <mripard@kernel.org>, npiggin@gmail.com, sumit.semwal@linaro.org, thomas.lendacky@amd.com, tjmercier@google.com, x86@kernel.org, Arnd Bergmann <arnd@arndb.de>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: move system_cc_shared heap under separate Kconfig
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EG54UGPYPKBMGIMZ5NKP3WUCKY2JZDCY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.99 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:sumit.semwal@linaro.org,m:Brian.Starkey@arm.com,m:afd@ti.com,m:agordeev@linux.ibm.com,m:arnd@linaro.org,m:benjamin.gaignard@collabora.com,m:chleroy@kernel.org,m:christian.koenig@amd.com,m:djbw@kernel.org,m:dri-devel@lists.freedesktop.org,m:gerald.schaefer@linux.ibm.com,m:hch@infradead.org,m:jgg@ziepe.ca,m:jiri@resnulli.us,m:jstultz@google.com,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:linux-s390@vger.kernel.org,m:linuxppc-dev@lists.ozlabs.org,m:lkp@intel.com,m:maddy@linux.ibm.com,m:mpe@ellerman.id.au,m:mripard@kernel.org,m:npiggin@gmail.com,m:thomas.lendacky@amd.com,m:tjmercier@google.com,m:x86@kernel.org,m:arnd@arndb.de,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[mripard@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[30];
	FREEMAIL_CC(0.00)[arm.com,ti.com,linux.ibm.com,linaro.org,collabora.com,kernel.org,amd.com,lists.freedesktop.org,infradead.org,ziepe.ca,resnulli.us,google.com,lists.linaro.org,vger.kernel.org,lists.ozlabs.org,intel.com,ellerman.id.au,gmail.com,arndb.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mripard@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[arndb.de:email,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AE61866F6AD

On Wed, 10 Jun 2026 19:53:29 +0530, Sumit Semwal wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> While system heap and system_cc_shared heap share a lot of code
> and hence the same source file, their users have different needs.
> 
> 
> [ ... ]

Acked-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
