Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CAAB517489
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  2 May 2022 18:37:57 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3DF0E48047
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  2 May 2022 16:37:56 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	by lists.linaro.org (Postfix) with ESMTPS id 2DC8B402CE
	for <linaro-mm-sig@lists.linaro.org>; Mon,  2 May 2022 16:37:34 +0000 (UTC)
Received: by mail-wr1-f46.google.com with SMTP id u3so20260455wrg.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 02 May 2022 09:37:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=BrOnJQ5GVd5xSufoaIbn+bREEyd4T5ZXHXrgSKz+378=;
        b=okpkvKiRl915tZRV+tKO2JUIHBSt+lEHdvyw8bY6TfdI5VooUsa0uko0GD2XuRtY6D
         ib2FOcZyu81uirrOQztEbyC13epUQrx7siG4pmRnHYF/yHr+iQUxw2oWRk7l7JpZPy2q
         EuePeHUY3wNFGxhM6ImJ5oulTkzYDCRCHjor0Ey1yXxucVzqfL9H9R7q2oT6ACV7MMeZ
         QUArRl0gIsFxN1ixLavUYobBb6oLoqTou2giIWUCQjleu4SgzBSL/dH8TdU1uwbG34lt
         0iroKwnZw4OoPgDqonqH6AQZ/Oy+sNlN2fP9I7HfH4hZi4oxsJXFtU4sJvElHNoANYcc
         fnbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=BrOnJQ5GVd5xSufoaIbn+bREEyd4T5ZXHXrgSKz+378=;
        b=UfxkY09CJOX34VkKbHeKoZcXvyxY5LxmValtllP+DjGAAN5hsSpmdjQNxRvba8+fnH
         DpcU24RCC7qzQSTcgXf85miwWNX4MPQrPxufUFumX8pJam4+sfCPnQLsto330m7cMgk1
         1ZOu3g+UbfmZQ2fFAAdRtwt4hycUfWwegkrIc61gUAoB97T7Yt0c7xyqrTAFdHhnWJC6
         6ifUCVUkZIbjo/jZNYEJxLbN9YPh98AuOXXJHgLW7Cjg/8CukLhZsPpRpEXCoF87ukPY
         Dek8ZTVJ2lkrLw3NIVEfxDcnBhqmdazwERnNE5SPvVUjhdiUj/TIViRCoDr3g7+a7s+O
         2ILQ==
X-Gm-Message-State: AOAM530bIMxg2QxorCi57ad65KyOAGru8AaF9yJVAzm+yP3+AXTEakmU
	kmSFMeD36PwvJGDo7YAi7WRww67v/+0=
X-Google-Smtp-Source: ABdhPJwsgT2uBu8jt40/OL4SbaktGz3QRHu++Q4skOI7kiUNv4O32wAoOAtOasCXMjvp7kYjRaqe4g==
X-Received: by 2002:a05:6000:1ac8:b0:20c:6ed8:403 with SMTP id i8-20020a0560001ac800b0020c6ed80403mr1907892wry.247.1651509453268;
        Mon, 02 May 2022 09:37:33 -0700 (PDT)
Received: from able.fritz.box (p57b0b9e1.dip0.t-ipconnect.de. [87.176.185.225])
        by smtp.gmail.com with ESMTPSA id p14-20020adfaa0e000000b0020c5253d8f6sm7294694wrd.66.2022.05.02.09.37.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 May 2022 09:37:32 -0700 (PDT)
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
Date: Mon,  2 May 2022 18:37:11 +0200
Message-Id: <20220502163722.3957-5-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220502163722.3957-1-christian.koenig@amd.com>
References: <20220502163722.3957-1-christian.koenig@amd.com>
MIME-Version: 1.0
Message-ID-Hash: YKERYO2NQFTJA3FYMPX4OGF4R5IUTGBL
X-Message-ID-Hash: YKERYO2NQFTJA3FYMPX4OGF4R5IUTGBL
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 04/15] dma-buf: add user fence support to dma_fence_chain
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YKERYO2NQFTJA3FYMPX4OGF4R5IUTGBL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SWYgZWl0aGVyIHRoZSBwcmV2aW91cyBmZW5jZSBvciB0aGUgbmV3bHkgY2hhaW5lZCBvbiBpcyBh
biB1c2VyIGZlbmNlIHRoZQ0KZG1hX2ZlbmNlIGNoYWluIG5vZGUgaXMgY29uc2lkZXJlZCBhbiB1
c2VyIGZlbmNlIGFzIHdlbGwuDQoNClRoaXMgd2F5IHRoZSB1c2VyIGZlbmNlIHN0YXR1cyBwcm9w
YWdhdGVzIHRocm91Z2ggdGhlIGNoYWluLg0KDQpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2
bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQotLS0NCiBkcml2ZXJzL2RtYS1idWYvZG1h
LWZlbmNlLWNoYWluLmMgfCA0ICsrKysNCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCsp
DQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWNoYWluLmMgYi9kcml2
ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWNoYWluLmMNCmluZGV4IDA2ZjhlZjk3YzZlOC4uNDIxMjQx
NjA3YWMyIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS1jaGFpbi5jDQor
KysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWNoYWluLmMNCkBAIC0yNTMsNiArMjUzLDEw
IEBAIHZvaWQgZG1hX2ZlbmNlX2NoYWluX2luaXQoc3RydWN0IGRtYV9mZW5jZV9jaGFpbiAqY2hh
aW4sDQogCWRtYV9mZW5jZV9pbml0KCZjaGFpbi0+YmFzZSwgJmRtYV9mZW5jZV9jaGFpbl9vcHMs
DQogCQkgICAgICAgJmNoYWluLT5sb2NrLCBjb250ZXh0LCBzZXFubyk7DQogDQorCWlmICgocHJl
diAmJiB0ZXN0X2JpdChETUFfRkVOQ0VfRkxBR19VU0VSLCAmcHJldi0+ZmxhZ3MpKSB8fA0KKwkg
ICAgdGVzdF9iaXQoRE1BX0ZFTkNFX0ZMQUdfVVNFUiwgJmZlbmNlLT5mbGFncykpDQorCQlzZXRf
Yml0KERNQV9GRU5DRV9GTEFHX1VTRVIsICZjaGFpbi0+YmFzZS5mbGFncyk7DQorDQogCS8qDQog
CSAqIENoYWluaW5nIGRtYV9mZW5jZV9jaGFpbiBjb250YWluZXIgdG9nZXRoZXIgaXMgb25seSBh
bGxvd2VkIHRocm91Z2gNCiAJICogdGhlIHByZXYgZmVuY2UgYW5kIG5vdCB0aHJvdWdoIHRoZSBj
b250YWluZWQgZmVuY2UuDQotLSANCjIuMjUuMQ0KDQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5h
cm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0
byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
