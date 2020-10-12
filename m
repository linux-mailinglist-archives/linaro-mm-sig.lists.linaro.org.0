Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D875E28ABB8
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 12 Oct 2020 04:09:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 96A0361789
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 12 Oct 2020 02:09:20 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 87CC266518; Mon, 12 Oct 2020 02:09:20 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B9A70610D0;
	Mon, 12 Oct 2020 02:08:47 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 67B8460BEE
 for <linaro-mm-sig@lists.linaro.org>; Mon, 12 Oct 2020 02:08:44 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4CD01610D0; Mon, 12 Oct 2020 02:08:44 +0000 (UTC)
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by lists.linaro.org (Postfix) with ESMTPS id 2241B60BEE
 for <linaro-mm-sig@lists.linaro.org>; Mon, 12 Oct 2020 02:08:43 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id d1so3728939pfc.0
 for <linaro-mm-sig@lists.linaro.org>; Sun, 11 Oct 2020 19:08:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dmwggOCqdZ43g+jJ6N3bGQO88ZFGrgGWMzcJMG6MFZc=;
 b=IhiRJxaioewAp/9F1VXA3CBURVV2Bj8D2DMTeirH2GUapStgCaqJIAmFB0yr7bYjT3
 6GMwUdly6DyyXwkpXvBuxhweLMvBTybMZAf2e9C4q2fdtrWgNpQ3zJqK9kzqjHhA3FGm
 jBlfUPL41E5OqtD6UzRb5NvpXY90uAZEoGXWogPn9z3ip0g46dhxkVnLTlrOvpcOTm1L
 t6SHySTLtDISeoHlRLcvvX5n9c9ZoUEri0/KpDPVq4+jV0vtKNhqHWdH1PsBIT/2eBtL
 ejGp6DPS7BWqxPCo0fff5kCxjuOLg1t7R9Hzmw1kVUygiEdYQwpZ/gJo3xP5HjQ21Tw+
 xUrg==
X-Gm-Message-State: AOAM5335pCEHycLbV4mSSmfa+EYP+fuuhAtYFc4OCNoeugn8lAJFUDhw
 YK+5aT7yzZLF6/NPS50IkIA=
X-Google-Smtp-Source: ABdhPJzc6Fu9J+JxBCHpefhcMz1MLh+TQl5nN/I2XuTSAE9C39n+EnAcOs0namKHz9x7wpMt1N6nmw==
X-Received: by 2002:a17:90b:1111:: with SMTP id
 gi17mr17663259pjb.109.1602468522254; 
 Sun, 11 Oct 2020 19:08:42 -0700 (PDT)
Received: from localhost (c-73-25-156-94.hsd1.or.comcast.net. [73.25.156.94])
 by smtp.gmail.com with ESMTPSA id
 p16sm19702873pfq.63.2020.10.11.19.08.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 11 Oct 2020 19:08:40 -0700 (PDT)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Sun, 11 Oct 2020 19:09:27 -0700
Message-Id: <20201012020958.229288-1-robdclark@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Liviu Dudau <liviu.dudau@arm.com>, open list <linux-kernel@vger.kernel.org>,
 Eric Anholt <eric@anholt.net>, AngeloGioacchino Del Regno <kholk11@gmail.com>,
 Sam Ravnborg <sam@ravnborg.org>, Emil Velikov <emil.velikov@collabora.com>,
 Rob Clark <robdclark@chromium.org>, Jonathan Marek <jonathan@marek.ca>,
 Matthias Kaehlcke <mka@chromium.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>,
 "open list:DRM DRIVER FOR MSM ADRENO GPU" <linux-arm-msm@vger.kernel.org>,
 Sharat Masetty <smasetty@codeaurora.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 Rajendra Nayak <rnayak@codeaurora.org>,
 Harigovindan P <harigovi@codeaurora.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Brian Masney <masneyb@onstation.org>,
 "open list:DRM DRIVER FOR MSM ADRENO GPU" <freedreno@lists.freedesktop.org>
Subject: [Linaro-mm-sig] [PATCH 00/14] drm/msm: de-struct_mutex-ification
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

RnJvbTogUm9iIENsYXJrIDxyb2JkY2xhcmtAY2hyb21pdW0ub3JnPgoKVGhpcyBkb2Vzbid0IHJl
bW92ZSAqYWxsKiB0aGUgc3RydWN0X211dGV4LCBidXQgaXQgY292ZXJzIHRoZSB3b3JzdApvZiBp
dCwgaWUuIHNocmlua2VyL21hZHZpc2UvZnJlZS9yZXRpcmUuICBUaGUgc3VibWl0IHBhdGggc3Rp
bGwgdXNlcwpzdHJ1Y3RfbXV0ZXgsIGJ1dCBpdCBzdGlsbCBuZWVkcyAqc29tZXRoaW5nKiBzZXJp
YWxpemUgYSBwb3J0aW9uIG9mCnRoZSBzdWJtaXQgcGF0aCwgYW5kIGxvY2tfc3RhdCBtb3N0bHkg
anVzdCBzaG93cyB0aGUgbG9jayBjb250ZW50aW9uCnRoZXJlIGJlaW5nIHdpdGggb3RoZXIgc3Vi
bWl0cy4gIEFuZCB0aGVyZSBhcmUgYSBmZXcgb3RoZXIgYml0cyBvZgpzdHJ1Y3RfbXV0ZXggdXNh
Z2UgaW4gbGVzcyBjcml0aWNhbCBwYXRocyAoZGVidWdmcywgZXRjKS4gIEJ1dCB0aGlzCnNlZW1z
IGxpa2UgYSByZWFzb25hYmxlIHN0ZXAgaW4gdGhlIHJpZ2h0IGRpcmVjdGlvbi4KCnYyOiB0ZWFj
aCBsb2NrZGVwIGFib3V0IHNocmlua2VyIGxvY2tpbmcgcGF0dGVycyAoZGFudmV0KSBhbmQKICAg
IGNvbnZlcnQgdG8gb2JqLT5yZXN2IGxvY2tpbmcgKGRhbnZldCkKClJvYiBDbGFyayAoMjIpOgog
IGRybS9tc20vZ2VtOiBBZGQgb2JqLT5sb2NrIHdyYXBwZXJzCiAgZHJtL21zbS9nZW06IFJlbmFt
ZSBpbnRlcm5hbCBnZXRfaW92YV9sb2NrZWQgaGVscGVyCiAgZHJtL21zbS9nZW06IE1vdmUgcHJv
dG90eXBlcyB0byBtc21fZ2VtLmgKICBkcm0vbXNtL2dlbTogQWRkIHNvbWUgX2xvY2tlZCgpIGhl
bHBlcnMKICBkcm0vbXNtL2dlbTogTW92ZSBsb2NraW5nIGluIHNocmlua2VyIHBhdGgKICBkcm0v
bXNtL3N1Ym1pdDogTW92ZSBjb3B5X2Zyb21fdXNlciBhaGVhZCBvZiBsb2NraW5nIGJvcwogIGRy
bS9tc206IERvIHJwbSBnZXQgc29vbmVyIGluIHRoZSBzdWJtaXQgcGF0aAogIGRybS9tc20vZ2Vt
OiBTd2l0Y2ggb3ZlciB0byBvYmotPnJlc3YgZm9yIGxvY2tpbmcKICBkcm0vbXNtOiBVc2UgY29y
cmVjdCBkcm1fZ2VtX29iamVjdF9wdXQoKSBpbiBmYWlsIGNhc2UKICBkcm0vbXNtOiBEcm9wIGNo
YXR0eSB0cmFjZQogIGRybS9tc206IE1vdmUgdXBkYXRlX2ZlbmNlcygpCiAgZHJtL21zbTogQWRk
IHByaXYtPm1tX2xvY2sgdG8gcHJvdGVjdCBhY3RpdmUvaW5hY3RpdmUgbGlzdHMKICBkcm0vbXNt
OiBEb2N1bWVudCBhbmQgcmVuYW1lIHByZWVtcHRfbG9jawogIGRybS9tc206IFByb3RlY3Qgcmlu
Zy0+c3VibWl0cyB3aXRoIGl0J3Mgb3duIGxvY2sKICBkcm0vbXNtOiBSZWZjb3VudCBzdWJtaXRz
CiAgZHJtL21zbTogUmVtb3ZlIG9iai0+Z3B1CiAgZHJtL21zbTogRHJvcCBzdHJ1Y3RfbXV0ZXgg
ZnJvbSB0aGUgcmV0aXJlIHBhdGgKICBkcm0vbXNtOiBEcm9wIHN0cnVjdF9tdXRleCBpbiBmcmVl
X29iamVjdCgpIHBhdGgKICBkcm0vbXNtOiByZW1vdmUgbXNtX2dlbV9mcmVlX3dvcmsKICBkcm0v
bXNtOiBkcm9wIHN0cnVjdF9tdXRleCBpbiBtYWR2aXNlIHBhdGgKICBkcm0vbXNtOiBEcm9wIHN0
cnVjdF9tdXRleCBpbiBzaHJpbmtlciBwYXRoCiAgZHJtL21zbTogRG9uJ3QgaW1wbGljaXQtc3lu
YyBpZiBvbmx5IGEgc2luZ2xlIHJpbmcKCiBkcml2ZXJzL2dwdS9kcm0vbXNtL2FkcmVuby9hNXh4
X2dwdS5jICAgICB8ICAgNCArLQogZHJpdmVycy9ncHUvZHJtL21zbS9hZHJlbm8vYTV4eF9wcmVl
bXB0LmMgfCAgMTIgKy0KIGRyaXZlcnMvZ3B1L2RybS9tc20vYWRyZW5vL2E2eHhfZ3B1LmMgICAg
IHwgICA0ICstCiBkcml2ZXJzL2dwdS9kcm0vbXNtL2Rpc3AvbWRwNC9tZHA0X2NydGMuYyB8ICAg
MSArCiBkcml2ZXJzL2dwdS9kcm0vbXNtL2Rpc3AvbWRwNS9tZHA1X2NydGMuYyB8ICAgMSArCiBk
cml2ZXJzL2dwdS9kcm0vbXNtL2RzaS9kc2lfaG9zdC5jICAgICAgICB8ICAgMSArCiBkcml2ZXJz
L2dwdS9kcm0vbXNtL21zbV9kZWJ1Z2ZzLmMgICAgICAgICB8ICAgNyArCiBkcml2ZXJzL2dwdS9k
cm0vbXNtL21zbV9kcnYuYyAgICAgICAgICAgICB8ICAyMSArLQogZHJpdmVycy9ncHUvZHJtL21z
bS9tc21fZHJ2LmggICAgICAgICAgICAgfCAgNzMgKystLS0tLQogZHJpdmVycy9ncHUvZHJtL21z
bS9tc21fZmJkZXYuYyAgICAgICAgICAgfCAgIDEgKwogZHJpdmVycy9ncHUvZHJtL21zbS9tc21f
Z2VtLmMgICAgICAgICAgICAgfCAyNDUgKysrKysrKysrKy0tLS0tLS0tLS0tLQogZHJpdmVycy9n
cHUvZHJtL21zbS9tc21fZ2VtLmggICAgICAgICAgICAgfCAxMzEgKysrKysrKysrKy0tCiBkcml2
ZXJzL2dwdS9kcm0vbXNtL21zbV9nZW1fc2hyaW5rZXIuYyAgICB8ICA4MSArKystLS0tCiBkcml2
ZXJzL2dwdS9kcm0vbXNtL21zbV9nZW1fc3VibWl0LmMgICAgICB8IDE1NCArKysrKysrKystLS0t
LQogZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZ3B1LmMgICAgICAgICAgICAgfCAgOTggKysrKyst
LS0tCiBkcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9ncHUuaCAgICAgICAgICAgICB8ICAgNSArLQog
ZHJpdmVycy9ncHUvZHJtL21zbS9tc21fcmluZ2J1ZmZlci5jICAgICAgfCAgIDMgKy0KIGRyaXZl
cnMvZ3B1L2RybS9tc20vbXNtX3JpbmdidWZmZXIuaCAgICAgIHwgIDEzICstCiAxOCBmaWxlcyBj
aGFuZ2VkLCA0NTkgaW5zZXJ0aW9ucygrKSwgMzk2IGRlbGV0aW9ucygtKQoKLS0gCjIuMjYuMgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1t
LXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8v
bGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
