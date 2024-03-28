Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 752E68908A8
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Mar 2024 19:54:25 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6B3573F359
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Mar 2024 18:54:24 +0000 (UTC)
Received: from mail-4022.proton.ch (mail-4022.proton.ch [185.70.40.22])
	by lists.linaro.org (Postfix) with ESMTPS id C47003F359
	for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Mar 2024 18:54:20 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=emersion.fr header.s=protonmail3 header.b=5bMzjLzW;
	dmarc=pass (policy=none) header.from=emersion.fr;
	spf=pass (lists.linaro.org: domain of contact@emersion.fr designates 185.70.40.22 as permitted sender) smtp.mailfrom=contact@emersion.fr
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emersion.fr;
	s=protonmail3; t=1711652058; x=1711911258;
	bh=8JJ9p6lY9P8w8IbBioVbNGfdfLpZkqX+ZuL2awuKSIM=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=5bMzjLzWWcja+ZA1U8Sd4z+g+N8734Qk+FmP8GfAmatOwHanX6qEioeHz+S7kaV6F
	 HIo2tInlvJg/uWInypz7H2Iudeh661OPc/YU0E+q/5tRyT3i07tTdz+Xybnp7Q4S5B
	 g5WFOYvC/49xjm6nPtp42MXmsHb+YVKWne/CQZ0gltKn/P4Y41P/e2as+Rb00fkxLo
	 UxJQtAobRaXfKaqBWW41lb4NYL/DSEuD48HimbrlIz+yAbTpibpzHUjO3A5duwnoDP
	 0Dc4NF0zLx4qGJsMqAfIENmVPw06BXWNGhRY14OOFEA9fIFxwHylSLdf2ohGdZUX6H
	 yhGezeSAIhDlQ==
Date: Thu, 28 Mar 2024 18:54:10 +0000
To: Rob Clark <robdclark@gmail.com>
From: Simon Ser <contact@emersion.fr>
Message-ID: <y5mjLoUp9fKwSNrAEOQJtfqfDZ5cYtsf_KcbNCWQieZE-uJXQJE6bQhC6oLfS6aBZRimZSarDjUmeakjwYZmtQZWPM_3lAENdY17K-VyGsc=@emersion.fr>
In-Reply-To: <CAF6AEGvUsP7fjqFH9Co1vE0ZGRmMXmFBCrNc3hCQwxky3mME3A@mail.gmail.com>
References: <20240322214801.319975-1-robdclark@gmail.com> <1Wwj_q3RYer6np0Orz0wJd9dlF82iBSX-PIVSlhCgJbpfVBMHF_CF04gHojkvqnvz9NXH6kACZGXQG9yXwtkbjIzLmdi-GNDkO5Nz2E-J9Y=@emersion.fr> <CAF6AEGvUsP7fjqFH9Co1vE0ZGRmMXmFBCrNc3hCQwxky3mME3A@mail.gmail.com>
Feedback-ID: 1358184:user:proton
MIME-Version: 1.0
X-Rspamd-Queue-Id: C47003F359
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.39 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-2.19)[96.11%];
	DMARC_POLICY_ALLOW(-0.50)[emersion.fr,none];
	R_DKIM_ALLOW(-0.20)[emersion.fr:s=protonmail3];
	R_SPF_ALLOW(-0.20)[+ip4:185.70.40.0/24];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[185.70.40.22:from];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:62371, ipnet:185.70.40.0/24, country:CH];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_COUNT_ZERO(0.00)[0];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,chromium.org,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,vger.kernel.org,lists.linaro.org];
	FREEMAIL_TO(0.00)[gmail.com];
	FROM_EQ_ENVFROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[emersion.fr:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: P3JTGBONNWEJ5TE6C7MWNE2ZZEYULQOQ
X-Message-ID-Hash: P3JTGBONNWEJ5TE6C7MWNE2ZZEYULQOQ
X-MailFrom: contact@emersion.fr
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, Rob Clark <robdclark@chromium.org>, Dominik Behr <dbehr@chromium.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?utf-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/prime: Unbreak virtgpu dma-buf export
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/P3JTGBONNWEJ5TE6C7MWNE2ZZEYULQOQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1cnNkYXksIE1hcmNoIDI4dGgsIDIwMjQgYXQgMTk6NDcsIFJvYiBDbGFyayA8cm9iZGNs
YXJrQGdtYWlsLmNvbT4gd3JvdGU6DQoNCj4gYW55IGNoYW5jZSBJIGNvdWxkIHRhbGsgeW91IGlu
dG8gcHVzaGluZyB0byBkcm0tbWlzYy1maXhlcz8NCg0KT2ggc29ycnksIEkgdGhvdWdodCB5b3Ug
aGFkIGFjY2Vzc+KApiBQdXNoZWQgd2l0aCBhIG1pbm9yIGVkaXQgdG8gcmVtb3ZlDQp1bm5lY2Vz
c2FyeSBwYXJlbnRoZXNlcyB0byBtYWtlIGNoZWNrcGF0Y2ggaGFwcHkhDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
