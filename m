Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8120D7D7125
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 Oct 2023 17:45:30 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 813BE40BB7
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 Oct 2023 15:45:29 +0000 (UTC)
Received: from mail-4323.proton.ch (mail-4323.proton.ch [185.70.43.23])
	by lists.linaro.org (Postfix) with ESMTPS id 4F9B23EFD1
	for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Oct 2023 15:45:13 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=emersion.fr header.s=protonmail2 header.b=f5ZliKWD;
	dmarc=pass (policy=none) header.from=emersion.fr;
	spf=pass (lists.linaro.org: domain of contact@emersion.fr designates 185.70.43.23 as permitted sender) smtp.mailfrom=contact@emersion.fr
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emersion.fr;
	s=protonmail2; t=1698248711; x=1698507911;
	bh=DI90V1bXwX/Uwv3dOT9N//AgAR2Tj2M9NCy1KVRlAJ0=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=f5ZliKWD4GWYi5CTZC9fw481wKGRwUoXBR7j8DqVOl0Vb3hdYy3HwZAB9EtCRdHJT
	 h0paaejp+AsubIIG5Y59KzNtTpylq1huiC/d/9+SeUj5iIlAa9e1j/AiZc0LFN/n72
	 jsQbgP5j/B1GWxOgk+FeC4nKgudfFHdFFv0Vz5gEXr7fxrvy13bMBo67MvgKI8YsbZ
	 2mScJyrytlw7J3o2H7kbdSl12Vl62qMQC/9dDmwYHH9QKDhjb6+tA9gxCIjS6pt7e3
	 RWg5x0nDKr5E9+VkBuzMx20Mqxhf8P3BS3sTt+YD32UsMKdmDYKyo5saSkZO/pXtMy
	 1ibsvoyTUMvAg==
Date: Wed, 25 Oct 2023 15:44:58 +0000
To: Keith Zhao <keith.zhao@starfivetech.com>
From: Simon Ser <contact@emersion.fr>
Message-ID: <2wq8ssA4KblYH5JfC8KxeWWoYPleN_BcH6wSZ92tkOixbiU5k2ZU_lS4lO0awCCeomkdjsEoVlUmAH7aaaR2n-bdLKu1AaSar_JW78Kw4Ik=@emersion.fr>
In-Reply-To: <nPUOGd5_-QuZTUXhGdmJ03Bri58JI0SeYVcBLnJG4aFuqobd5i1RUBVoi4CNP3VGg5oBdz5LAGdwHERxtMwXJyHPyVxJz4UpiBuFiA5NlkA=@emersion.fr>
References: <20231025103957.3776-1-keith.zhao@starfivetech.com> <20231025103957.3776-4-keith.zhao@starfivetech.com> <nPUOGd5_-QuZTUXhGdmJ03Bri58JI0SeYVcBLnJG4aFuqobd5i1RUBVoi4CNP3VGg5oBdz5LAGdwHERxtMwXJyHPyVxJz4UpiBuFiA5NlkA=@emersion.fr>
Feedback-ID: 1358184:user:proton
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 4F9B23EFD1
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.56 / 15.00];
	BAYES_HAM(-2.66)[98.48%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[emersion.fr,none];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[185.70.43.23:from];
	R_DKIM_ALLOW(-0.20)[emersion.fr:s=protonmail2];
	R_SPF_ALLOW(-0.20)[+ip4:185.70.43.0/24];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:62371, ipnet:185.70.43.0/24, country:CH];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[dt];
	RCPT_COUNT_TWELVE(0.00)[25];
	ARC_NA(0.00)[];
	RCVD_COUNT_ZERO(0.00)[0];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,lists.infradead.org,lists.linaro.org,linaro.org,esmil.dk,starfivetech.com,kernel.org,eecs.berkeley.edu,suse.de,edgeble.ai,hotmail.com,sifive.com,dabbelt.com,amd.com];
	DWL_DNSWL_BLOCKED(0.00)[emersion.fr:dkim];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[emersion.fr:+]
X-Rspamd-Action: no action
Message-ID-Hash: HSRZJXZ4MZAHR7D67YAOKD34WIQNQRPO
X-Message-ID-Hash: HSRZJXZ4MZAHR7D67YAOKD34WIQNQRPO
X-MailFrom: contact@emersion.fr
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Sumit Semwal <sumit.semwal@linaro.org>, Emil Renner Berthing <kernel@esmil.dk>, Shengyang Chen <shengyang.chen@starfivetech.com>, Conor Dooley <conor+dt@kernel.org>, Albert Ou <aou@eecs.berkeley.edu>, Thomas Zimmermann <tzimmermann@suse.de>, Maxime Ripard <mripard@kernel.org>, Jagan Teki <jagan@edgeble.ai>, Rob Herring <robh+dt@kernel.org>, Chris Morgan <macromorgan@hotmail.com>, Paul Walmsley <paul.walmsley@sifive.com>, Bjorn Andersson <andersson@kernel.org>, Changhuang Liang <changhuang.liang@starfivetech.com>, Jack Zhu <jack.zhu@starfivetech.com>, Palmer Dabbelt <palmer@dabbelt.com>, Shawn Guo <shawnguo@kernel.org>, christian.koenig@amd.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 3/6] drm/fourcc: Add drm/vs tiled modifiers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HSRZJXZ4MZAHR7D67YAOKD34WIQNQRPO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Thinking about this again, it seems like you could start with just simple
enumerated modifiers like Intel does, and then only switch to more
complicated logic with macros and fields if there is an actual need in
the future.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
