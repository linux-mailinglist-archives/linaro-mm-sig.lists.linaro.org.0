Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D98D7D7110
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 Oct 2023 17:38:49 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6DE2B40BB3
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 Oct 2023 15:38:48 +0000 (UTC)
Received: from mail-4323.proton.ch (mail-4323.proton.ch [185.70.43.23])
	by lists.linaro.org (Postfix) with ESMTPS id 9F0163EA1B
	for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Oct 2023 15:38:32 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=emersion.fr header.s=protonmail2 header.b=HEtXXiSu;
	dmarc=pass (policy=none) header.from=emersion.fr;
	spf=pass (lists.linaro.org: domain of contact@emersion.fr designates 185.70.43.23 as permitted sender) smtp.mailfrom=contact@emersion.fr
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emersion.fr;
	s=protonmail2; t=1698248310; x=1698507510;
	bh=s3OSHMGsk9AbX3O1+PeWpTjfY8iogU36oS0MMtzUkOM=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=HEtXXiSuOfPyu+UaMN6/UV6yrkpJKijbGZmGy3nURSVNze4dfy2e3RthAItSDlvwg
	 4h90fPnJKu12fpPltCZKYZfw5bIINOVaXM4qBkH7mwBxzUJ4Ncjlvgfg+EQGBoBUNj
	 GWr1x3gL0K3kZ0qd+jB+GIXt833zMOEnT0aiCVjZkVHUjNvTW2Oo9CHyZT0sjsc1eL
	 637VWZ8aIGINmiLfyCcHYWgDQaupiBrfRLAv0aRQuHpLERitwggQH1WtF5xJC4ndzr
	 KFO4FuWJKWiWC2iFhXN9NyPrQct6vv3sJEOZ76zIxNofGuckAkOk0SmdEcP+cfdY8s
	 9YnsG/jJRnKYg==
Date: Wed, 25 Oct 2023 15:38:10 +0000
To: Keith Zhao <keith.zhao@starfivetech.com>
From: Simon Ser <contact@emersion.fr>
Message-ID: <nPUOGd5_-QuZTUXhGdmJ03Bri58JI0SeYVcBLnJG4aFuqobd5i1RUBVoi4CNP3VGg5oBdz5LAGdwHERxtMwXJyHPyVxJz4UpiBuFiA5NlkA=@emersion.fr>
In-Reply-To: <20231025103957.3776-4-keith.zhao@starfivetech.com>
References: <20231025103957.3776-1-keith.zhao@starfivetech.com> <20231025103957.3776-4-keith.zhao@starfivetech.com>
Feedback-ID: 1358184:user:proton
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 9F0163EA1B
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.90 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[emersion.fr,none];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[185.70.43.23:from];
	R_SPF_ALLOW(-0.20)[+ip4:185.70.43.0/24];
	R_DKIM_ALLOW(-0.20)[emersion.fr:s=protonmail2];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[dt];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:62371, ipnet:185.70.43.0/24, country:CH];
	RCPT_COUNT_TWELVE(0.00)[25];
	RCVD_COUNT_ZERO(0.00)[0];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,lists.infradead.org,lists.linaro.org,linaro.org,esmil.dk,starfivetech.com,kernel.org,eecs.berkeley.edu,suse.de,edgeble.ai,hotmail.com,sifive.com,dabbelt.com,amd.com];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[emersion.fr:+]
X-Rspamd-Action: no action
Message-ID-Hash: WGBYLBZGXREFFJ46REYCF75ZPG4OI33G
X-Message-ID-Hash: WGBYLBZGXREFFJ46REYCF75ZPG4OI33G
X-MailFrom: contact@emersion.fr
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Sumit Semwal <sumit.semwal@linaro.org>, Emil Renner Berthing <kernel@esmil.dk>, Shengyang Chen <shengyang.chen@starfivetech.com>, Conor Dooley <conor+dt@kernel.org>, Albert Ou <aou@eecs.berkeley.edu>, Thomas Zimmermann <tzimmermann@suse.de>, Maxime Ripard <mripard@kernel.org>, Jagan Teki <jagan@edgeble.ai>, Rob Herring <robh+dt@kernel.org>, Chris Morgan <macromorgan@hotmail.com>, Paul Walmsley <paul.walmsley@sifive.com>, Bjorn Andersson <andersson@kernel.org>, Changhuang Liang <changhuang.liang@starfivetech.com>, Jack Zhu <jack.zhu@starfivetech.com>, Palmer Dabbelt <palmer@dabbelt.com>, Shawn Guo <shawnguo@kernel.org>, christian.koenig@amd.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 3/6] drm/fourcc: Add drm/vs tiled modifiers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WGBYLBZGXREFFJ46REYCF75ZPG4OI33G/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Would be good to have an overview comment to explain how bits in the
modifier are used and how everything is tied up together, e.g. what the
type and tile mode mean. Also some docs for DRM_FORMAT_MOD_VERISILICON_TYPE_NORMAL
would be nice. (If there is no other type, this can be removed, the bits
will be left as zero and can be extended later if needed.)
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
