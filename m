Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F8AB994DE0
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  8 Oct 2024 15:10:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D994244BB3
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  8 Oct 2024 13:10:29 +0000 (UTC)
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
	by lists.linaro.org (Postfix) with ESMTPS id DE1E844B82
	for <linaro-mm-sig@lists.linaro.org>; Tue,  8 Oct 2024 13:04:41 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=Otmsx2rr;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of sashal@kernel.org designates 147.75.193.91 as permitted sender) smtp.mailfrom=sashal@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 1CE3EA418D4;
	Tue,  8 Oct 2024 13:04:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 153D2C4CECC;
	Tue,  8 Oct 2024 13:04:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728392681;
	bh=CiHFkYMfmlhH7C61SxzU1s41M8D5uRdtrYwZ3UI1/nQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Otmsx2rrnevrNJz4cLf+Z+32OY2h9DjQBorQoXCcf6lSUhC69whxs27/7VaNcxKNL
	 AaoirpV4LLKVHGxjAn2x57uW1MRbG57TudgY2BNrquGlkdVt0LNLcfzAD4qlin78Hh
	 YIeC3z0165JBStl/rD4zo/dKDqZjXAOUuYolq++WUeSBbfYXVMDmAJQUhlMKrekPf4
	 /aUR+lVLP+H4wURm1VOCkSyBWrfadgbdrn3Ec4g1JhENfW7X4p/1DLudFetk9pMqHZ
	 j1COlC8q+ltFHaUSBCxGFaaL2UxjYnhaNsn3jCEJiclSyUiGEPYPyMupVBjgs/r/Hy
	 zmvDqrk1A2Lxw==
Date: Tue, 8 Oct 2024 09:04:39 -0400
From: Sasha Levin <sashal@kernel.org>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <ZwUt5zNpjTMzweM9@sashalap>
References: <20241004181828.3669209-1-sashal@kernel.org>
 <20241004181828.3669209-72-sashal@kernel.org>
 <bc1f6bc0-6512-48e0-9f97-c607b34e9ab1@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bc1f6bc0-6512-48e0-9f97-c607b34e9ab1@amd.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: DE1E844B82
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.20 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-2.70)[98.68%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:147.75.193.91];
	MIME_GOOD(-0.10)[text/plain];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[35];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:54825, ipnet:147.75.192.0/21, country:US];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,amd.com,gmail.com,ffwll.ch,linaro.org,igalia.com,126.com,lists.freedesktop.org,lists.linaro.org];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: CF6MNCG5QHAZHQCA44PXRJ5PZB7WNMSD
X-Message-ID-Hash: CF6MNCG5QHAZHQCA44PXRJ5PZB7WNMSD
X-MailFrom: sashal@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-kernel@vger.kernel.org, stable@vger.kernel.org, Lijo Lazar <lijo.lazar@amd.com>, Alex Deucher <alexander.deucher@amd.com>, Xinhui.Pan@amd.com, daniel@ffwll.ch, sumit.semwal@linaro.org, mario.limonciello@amd.com, Hawking.Zhang@amd.com, le.ma@amd.com, hamza.mahfooz@amd.com, andrealmeid@igalia.com, victorchengchi.lu@amd.com, sunil.khatri@amd.com, chenxb_99091@126.com, victor.skvortsov@amd.com, Jun.Ma2@amd.com, Yunxiang.Li@amd.com, Felix.Kuehling@amd.com, Arunpravin.PaneerSelvam@amd.com, tvrtko.ursulin@igalia.com, pierre-eric.pelloux-prayer@amd.com, Wang.Beyond@amd.com, shashank.sharma@amd.com, zhenguo.yin@amd.com, jesse.zhang@amd.com, Philip.Yang@amd.com, rajneesh.bhardwaj@amd.com, Tim.Huang@amd.com, amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH AUTOSEL 6.11 72/76] drm/amdgpu: nuke the VM PD/PT shadow handling
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CF6MNCG5QHAZHQCA44PXRJ5PZB7WNMSD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"; format="flowed"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 08, 2024 at 08:46:01AM +0200, Christian K=F6nig wrote:
>Hi Sasha,
>
>Am 04.10.24 um 20:17 schrieb Sasha Levin:
>>From: Christian K=F6nig <christian.koenig@amd.com>
>>
>>[ Upstream commit 7181faaa4703705939580abffaf9cb5d6b50dbb7 ]
>>
>>This was only used as workaround for recovering the page tables after
>>VRAM was lost and is no longer necessary after the function
>>amdgpu_vm_bo_reset_state_machine() started to do the same.
>>
>>Compute never used shadows either, so the only proplematic case left is
>>SVM and that is most likely not recoverable in any way when VRAM is
>>lost.
>
>why is that backported to older kernels? It's basically just removing=20
>an old and now unused feature.
>
>Lijo pointed out a related bug fixed by removing the feature, but that=20
>only happens extremely rarely and in my view doesn't really justify a=20
>backport.

I'll drop it then, thanks!

--=20
Thanks,
Sasha
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
