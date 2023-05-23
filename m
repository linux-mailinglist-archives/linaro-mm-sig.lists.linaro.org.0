Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id EB19170E118
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 May 2023 17:56:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D194944D76
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 May 2023 15:56:07 +0000 (UTC)
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com [209.85.167.182])
	by lists.linaro.org (Postfix) with ESMTPS id 2FA0A3F49E
	for <linaro-mm-sig@lists.linaro.org>; Tue, 23 May 2023 15:56:03 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20221208 header.b="BQ/Bwtss";
	spf=pass (lists.linaro.org: domain of alexdeucher@gmail.com designates 209.85.167.182 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-oi1-f182.google.com with SMTP id 5614622812f47-38e04d1b2b4so4107812b6e.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 23 May 2023 08:56:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684857362; x=1687449362;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=feR7RDbEdLIuOxFRuDJ8YtvTuElIb6gfqh0e2jlKlZ4=;
        b=BQ/BwtssHhbZ5SXgrL5qqcG4DxAtKpPixF+jH7TZmPAC6I3vktKSEdVhZDZ+ztF5Up
         X3wixHyR4QgoCizXCGPnprd+j9fKQZ8YfRCxcOPlVvd+/TIHG2uLsCxwd83ztdxm/2hq
         w0SwwSU2mAxn5+9WETXaqT7JLlyeES6GGGpGJGNb7kyYSW32dRzDMH8YQNjcENmueK5H
         CyukFJtQHtcLKhQn1KZhezhSsFaC0FzrGS6Wy24v5tKB2mfal6IUZwXkXTDl60M9X/re
         YjrqAi5wA6nuB5HYA4yMhgYBJDsvCPiZz7Tzu9q1ibzAWEX1acOd3gdM2kJpcci6tghO
         +VEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684857362; x=1687449362;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=feR7RDbEdLIuOxFRuDJ8YtvTuElIb6gfqh0e2jlKlZ4=;
        b=ZA8D4twY50lPrKxdumlYKdzaMb+uRDm1AkzspZR9pnZq18GknHTVIMUp6uKf3ZFy+2
         m8STVZal9yCE7ePgY6ca9dGRv7vhIWnE3ElWn6c5u/XXXWK1C+BgOgIyga+dCBYKRi5X
         0WgYjgQ/TA1i7vmwZAL8G9QsC5i93dRdU0Asr2aOhjQLqX0yMsaMXcZFO3dZraGi8iPJ
         LR6wqsImleoDRZlTeSxYeo8NL+vhsA8qJj+ZlKFeGtP5YYCCEIu3H/Q5O9sZkukYN9qr
         iYw4J4miLzuEVJg2fyRr//l539mmR2em33EAYTnAnoe4PGodgEhC7l84J7/8P4r7PTBy
         1aMw==
X-Gm-Message-State: AC+VfDwZTcqqfi9dF0yMR9iRnULUGfBTGdYrPPdAYpE67wdmYWTsKI6T
	b6aNx7P5Fi1/wIQ5HnUhKn5pVFbv3vdJekkqaGA=
X-Google-Smtp-Source: ACHHUZ4ZyUpdVtXyIatHPpZHmnxoVWfMnEnl1OVupErapn37R44kVZgKLmbC5muGz5Am7Mmro0S57dh0vvs0jDarnnk=
X-Received: by 2002:aca:1109:0:b0:383:ca99:c70e with SMTP id
 9-20020aca1109000000b00383ca99c70emr6905361oir.59.1684857362565; Tue, 23 May
 2023 08:56:02 -0700 (PDT)
MIME-Version: 1.0
References: <20230523021811.122014-1-jiapeng.chong@linux.alibaba.com>
In-Reply-To: <20230523021811.122014-1-jiapeng.chong@linux.alibaba.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Tue, 23 May 2023 11:55:51 -0400
Message-ID: <CADnq5_OxXz7TSvkarQxC8-342SxO+YE4PU_4mSADYtr0urofvg@mail.gmail.com>
To: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20221208];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ARC_NA(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	NEURAL_HAM(-0.00)[-0.973];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.182:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 2FA0A3F49E
X-Spamd-Bar: --------
Message-ID-Hash: JX476GANR2NY2FL5KS7PNASVGRJCFEB7
X-Message-ID-Hash: JX476GANR2NY2FL5KS7PNASVGRJCFEB7
X-MailFrom: alexdeucher@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: alexander.deucher@amd.com, Xinhui.Pan@amd.com, Abaci Robot <abaci@linux.alibaba.com>, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, sumit.semwal@linaro.org, linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org, christian.koenig@amd.com, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/amdgpu: Remove duplicate include
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JX476GANR2NY2FL5KS7PNASVGRJCFEB7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QXBwbGllZC4gIFRoYW5rcyENCg0KT24gTW9uLCBNYXkgMjIsIDIwMjMgYXQgMTA6MTjigK9QTSBK
aWFwZW5nIENob25nDQo8amlhcGVuZy5jaG9uZ0BsaW51eC5hbGliYWJhLmNvbT4gd3JvdGU6DQo+
DQo+IC4vZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvZ2Z4X3Y5XzRfMy5jOiBhbWRncHVfeGNw
LmggaXMgaW5jbHVkZWQgbW9yZSB0aGFuIG9uY2UuDQo+DQo+IFJlcG9ydGVkLWJ5OiBBYmFjaSBS
b2JvdCA8YWJhY2lAbGludXguYWxpYmFiYS5jb20+DQo+IExpbms6IGh0dHBzOi8vYnVnemlsbGEu
b3BlbmFub2xpcy5jbi9zaG93X2J1Zy5jZ2k/aWQ9NTI4MQ0KPiBTaWduZWQtb2ZmLWJ5OiBKaWFw
ZW5nIENob25nIDxqaWFwZW5nLmNob25nQGxpbnV4LmFsaWJhYmEuY29tPg0KPiAtLS0NCj4gIGRy
aXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2dmeF92OV80XzMuYyB8IDEgLQ0KPiAgMSBmaWxlIGNo
YW5nZWQsIDEgZGVsZXRpb24oLSkNCj4NCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9h
bWQvYW1kZ3B1L2dmeF92OV80XzMuYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2dmeF92
OV80XzMuYw0KPiBpbmRleCBlNWNmYjNhZGIzYjMuLjdmYjJkMzhiMDEwYSAxMDA2NDQNCj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvZ2Z4X3Y5XzRfMy5jDQo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2dmeF92OV80XzMuYw0KPiBAQCAtMjMsNyArMjMsNiBAQA0K
PiAgI2luY2x1ZGUgPGxpbnV4L2Zpcm13YXJlLmg+DQo+DQo+ICAjaW5jbHVkZSAiYW1kZ3B1Lmgi
DQo+IC0jaW5jbHVkZSAiYW1kZ3B1X3hjcC5oIg0KPiAgI2luY2x1ZGUgImFtZGdwdV9nZnguaCIN
Cj4gICNpbmNsdWRlICJzb2MxNS5oIg0KPiAgI2luY2x1ZGUgInNvYzE1ZC5oIg0KPiAtLQ0KPiAy
LjIwLjEuNy5nMTUzMTQ0Yw0KPg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0Bs
aXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1t
LXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
