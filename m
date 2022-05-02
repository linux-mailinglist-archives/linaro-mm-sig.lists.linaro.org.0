Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CBE051748F
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  2 May 2022 18:38:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 35CA44805E
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  2 May 2022 16:38:15 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	by lists.linaro.org (Postfix) with ESMTPS id 0DB434805C
	for <linaro-mm-sig@lists.linaro.org>; Mon,  2 May 2022 16:37:40 +0000 (UTC)
Received: by mail-wr1-f44.google.com with SMTP id j15so20283994wrb.2
        for <linaro-mm-sig@lists.linaro.org>; Mon, 02 May 2022 09:37:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=DjepyRyvA6mLg/4EFB+VBQwNzCxlgFJd+rSnwBXcAo4=;
        b=b9McOF0QAQ4Vl1Xixqh+MWtgKhqJVwn5xVup/ay+JwJWOdF4F9BUxMavHOaj/8S6Nh
         SdIUTeOUydNZ784Hwl1hjbrRa1iqlF3EFIu4jhNFxYHXtpm5gsCt7Z0dmwrog09TcyS9
         4D4sPCjynN1qp0m9VCtpp65oWPw1bE/QlKzw3oBmWsZyplJoEgktlSMI4ajRWnzURzVA
         CTiCssh6TAoEfw8Iz5ncjHIrKdoor3k9KKkcKIP9Lj2NEwvU09NeDBsHTJbf9rDSsUQa
         oZ+zLrz0fzr8Bc6PaKdaxIlWzjQtg5fEaVfv4ygePTgY8+nMUziiXz1JL3rb5oMuvpa5
         qYJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=DjepyRyvA6mLg/4EFB+VBQwNzCxlgFJd+rSnwBXcAo4=;
        b=p9DPESesW4/R2GPVXHZXlt1tOrBhRd47c6u5N/R/dGd/1+QkWjTtsQCqIAcu7mjYU3
         KOZ/sNu0d3AvDBUJZUiXPJ5fvtiKfB7TDV02hpHdkdc+OhsqzkCToWRxGkObnaA/2a7E
         ApNIyB/qKwzrteokKrFn7qKfqaqVz0ExxZ16iub2AniS9QsqktkDS/VLvrFPFSC3l+16
         HTPfoXHhHOMyFWws/nTaWrNalDKltbzvktE9nMYCGi5J1uJ5IwlkCHBHOOaPPkb1zCwz
         XxS9AnbDdQ7M3Izx1PA6aNOPO/2y5Mg7mVwihtUMq89QVA8dRfJHIZBMgH9ocEzbHvy1
         1FBA==
X-Gm-Message-State: AOAM532NBnn7o3lv8+45qbHlWjZCcKaicldcWWo/djN1Rl2DcfLhETHu
	ejSO0h2wzFDMdoMy28FnKlA=
X-Google-Smtp-Source: ABdhPJybrPRxtci7aY1OOebXO27jsS5DQk+XuP1Q+hwI5bUFAaGVwmOUHoqt5uQuXpdTVJ383HXw2A==
X-Received: by 2002:a5d:4205:0:b0:20a:e23c:a7f4 with SMTP id n5-20020a5d4205000000b0020ae23ca7f4mr10196022wrq.576.1651509459141;
        Mon, 02 May 2022 09:37:39 -0700 (PDT)
Received: from able.fritz.box (p57b0b9e1.dip0.t-ipconnect.de. [87.176.185.225])
        by smtp.gmail.com with ESMTPSA id p14-20020adfaa0e000000b0020c5253d8f6sm7294694wrd.66.2022.05.02.09.37.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 May 2022 09:37:38 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: daniel@ffwll.ch,
	jason@jlekstrand.net,
	daniels@collabora.com,
	skhawaja@google.com,
	maad.aldabagh@amd.com,
	sergemetral@google.com,
	sumit.semwal@linaro.org,
	gustavo@padovan.org,
	Felix.Kuehling@amd.com,
	alexander.deucher@amd.com,
	tzimmermann@suse.de,
	tvrtko.ursulin@linux.intel.com,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Date: Mon,  2 May 2022 18:37:15 +0200
Message-Id: <20220502163722.3957-9-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220502163722.3957-1-christian.koenig@amd.com>
References: <20220502163722.3957-1-christian.koenig@amd.com>
MIME-Version: 1.0
Message-ID-Hash: LTRHZQNU4MYK5QYHU3YB3D3N2ZHEZE2C
X-Message-ID-Hash: LTRHZQNU4MYK5QYHU3YB3D3N2ZHEZE2C
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 08/15] dma-buf: add support for polling on user fences
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LTRHZQNU4MYK5QYHU3YB3D3N2ZHEZE2C/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SnVzdCBhbHNvIHdhaXQgZm9yIHVzZXIgZmVuY2VzIHRvIHNpZ25hbCB3aGVuIHdlIHdhaXQgZm9y
IHdyaXRlIGZlbmNlcy4NCg0KU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0
aWFuLmtvZW5pZ0BhbWQuY29tPg0KLS0tDQogZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyB8IDEw
ICsrKysrKysrKysNCiAxIGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKQ0KDQpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVm
LmMNCmluZGV4IDc5Nzk1ODU3YmUzZS4uNTU1OGY0ZTU1NWY4IDEwMDY0NA0KLS0tIGEvZHJpdmVy
cy9kbWEtYnVmL2RtYS1idWYuYw0KKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KQEAg
LTIyNSw2ICsyMjUsMTYgQEAgc3RhdGljIGJvb2wgZG1hX2J1Zl9wb2xsX2FkZF9jYihzdHJ1Y3Qg
ZG1hX3Jlc3YgKnJlc3YsIGJvb2wgd3JpdGUsDQogCQlkbWFfZmVuY2VfcHV0KGZlbmNlKTsNCiAJ
fQ0KIA0KKwlpZiAoIXdyaXRlKQ0KKwkJcmV0dXJuIGZhbHNlOw0KKw0KKwlkbWFfcmVzdl9mb3Jf
ZWFjaF9mZW5jZSgmY3Vyc29yLCByZXN2LCBETUFfUkVTVl9VU0FHRV9VU0VSLCBmZW5jZSkgew0K
KwkJZG1hX2ZlbmNlX2dldChmZW5jZSk7DQorCQlyID0gZG1hX2ZlbmNlX2FkZF9jYWxsYmFjayhm
ZW5jZSwgJmRjYi0+Y2IsIGRtYV9idWZfcG9sbF9jYik7DQorCQlpZiAoIXIpDQorCQkJcmV0dXJu
IHRydWU7DQorCQlkbWFfZmVuY2VfcHV0KGZlbmNlKTsNCisJfQ0KIAlyZXR1cm4gZmFsc2U7DQog
fQ0KIA0KLS0gDQoyLjI1LjENCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0Bs
aXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1t
LXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
