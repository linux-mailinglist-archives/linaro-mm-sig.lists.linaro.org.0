Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A352E282D1F
	for <lists+linaro-mm-sig@lfdr.de>; Sun,  4 Oct 2020 21:21:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 662306195A
	for <lists+linaro-mm-sig@lfdr.de>; Sun,  4 Oct 2020 19:21:41 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 551D7619AC; Sun,  4 Oct 2020 19:21:41 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1302161750;
	Sun,  4 Oct 2020 19:21:11 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 8679760F10
 for <linaro-mm-sig@lists.linaro.org>; Sun,  4 Oct 2020 19:21:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 78B6661750; Sun,  4 Oct 2020 19:21:08 +0000 (UTC)
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com
 [209.85.216.66])
 by lists.linaro.org (Postfix) with ESMTPS id 2CD4160F10
 for <linaro-mm-sig@lists.linaro.org>; Sun,  4 Oct 2020 19:21:07 +0000 (UTC)
Received: by mail-pj1-f66.google.com with SMTP id ds1so967447pjb.5
 for <linaro-mm-sig@lists.linaro.org>; Sun, 04 Oct 2020 12:21:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NaCk20iXyuPTfKj7M2JUxIMfw5amxERCJiUzQ3nZIzw=;
 b=X3wWPUsZ75OH5tQcjXFs/i4jIKNCxdUMNkZsHx8VCqc/qVXL83E9MsM0Rynpnx4K/k
 CLzWPn08DiDisU+r+ChJIMb0KKp9YCn34oCKKWA3HroYBVDm/TPADvTapNRczMkdyjuv
 hyPs2+jSZObkxGQSjl5npzCAbwDfXLOTdEzL4xszmOnhabaXfQr2YBvlujDSbRhyQEjd
 OFguKjiGo5/jp8q6/oSq9VdTH0JeVnaNmSNlaKtlaWHfbl5plQ06J4IEimzHAh7riwAw
 NwxB0r/ar3NyRKWKcbCupR3MiUAqfx3Yaz9emGZ3VsZs41hdlogSOYBaT4/eq4bXvQP/
 ZgEg==
X-Gm-Message-State: AOAM530TzGByK8hT24YIXcmmsAK+BeaEbDruHTOH0oW0VT/0/mjTjwnW
 maTn0hTdU57wX4w+MGJ74jo=
X-Google-Smtp-Source: ABdhPJw6EeahDTBukuHlSW+cuZeQsk0WyBpaFt45uII85OHJoQALlKnmpO8sL4EXjaYoZMnUsCbVdg==
X-Received: by 2002:a17:90a:71c7:: with SMTP id
 m7mr13818070pjs.190.1601839266264; 
 Sun, 04 Oct 2020 12:21:06 -0700 (PDT)
Received: from localhost (c-73-25-156-94.hsd1.or.comcast.net. [73.25.156.94])
 by smtp.gmail.com with ESMTPSA id
 m188sm9772226pfd.56.2020.10.04.12.21.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 04 Oct 2020 12:21:04 -0700 (PDT)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Sun,  4 Oct 2020 12:21:32 -0700
Message-Id: <20201004192152.3298573-1-robdclark@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Rob Clark <robdclark@chromium.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>,
 Jonathan Marek <jonathan@marek.ca>,
 "open list:DRM DRIVER FOR MSM ADRENO GPU" <linux-arm-msm@vger.kernel.org>,
 Sharat Masetty <smasetty@codeaurora.org>,
 open list <linux-kernel@vger.kernel.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Eric Anholt <eric@anholt.net>, Ben Dooks <ben.dooks@codethink.co.uk>,
 Sam Ravnborg <sam@ravnborg.org>,
 AngeloGioacchino Del Regno <kholk11@gmail.com>,
 "open list:DRM DRIVER FOR MSM ADRENO GPU" <freedreno@lists.freedesktop.org>,
 Emil Velikov <emil.velikov@collabora.com>
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
IGxpa2UgYSByZWFzb25hYmxlIHN0ZXAgaW4gdGhlIHJpZ2h0IGRpcmVjdGlvbi4KClJvYiBDbGFy
ayAoMTQpOgogIGRybS9tc206IFVzZSBjb3JyZWN0IGRybV9nZW1fb2JqZWN0X3B1dCgpIGluIGZh
aWwgY2FzZQogIGRybS9tc206IERyb3AgY2hhdHR5IHRyYWNlCiAgZHJtL21zbTogTW92ZSB1cGRh
dGVfZmVuY2VzKCkKICBkcm0vbXNtOiBBZGQgcHJpdi0+bW1fbG9jayB0byBwcm90ZWN0IGFjdGl2
ZS9pbmFjdGl2ZSBsaXN0cwogIGRybS9tc206IERvY3VtZW50IGFuZCByZW5hbWUgcHJlZW1wdF9s
b2NrCiAgZHJtL21zbTogUHJvdGVjdCByaW5nLT5zdWJtaXRzIHdpdGggaXQncyBvd24gbG9jawog
IGRybS9tc206IFJlZmNvdW50IHN1Ym1pdHMKICBkcm0vbXNtOiBSZW1vdmUgb2JqLT5ncHUKICBk
cm0vbXNtOiBEcm9wIHN0cnVjdF9tdXRleCBmcm9tIHRoZSByZXRpcmUgcGF0aAogIGRybS9tc206
IERyb3Agc3RydWN0X211dGV4IGluIGZyZWVfb2JqZWN0KCkgcGF0aAogIGRybS9tc206IHJlbW92
ZSBtc21fZ2VtX2ZyZWVfd29yawogIGRybS9tc206IGRyb3Agc3RydWN0X211dGV4IGluIG1hZHZp
c2UgcGF0aAogIGRybS9tc206IERyb3Agc3RydWN0X211dGV4IGluIHNocmlua2VyIHBhdGgKICBk
cm0vbXNtOiBEb24ndCBpbXBsaWNpdC1zeW5jIGlmIG9ubHkgYSBzaW5nbGUgcmluZwoKIGRyaXZl
cnMvZ3B1L2RybS9tc20vYWRyZW5vL2E1eHhfZ3B1LmMgICAgIHwgIDQgKy0KIGRyaXZlcnMvZ3B1
L2RybS9tc20vYWRyZW5vL2E1eHhfcHJlZW1wdC5jIHwgMTIgKy0tCiBkcml2ZXJzL2dwdS9kcm0v
bXNtL2FkcmVuby9hNnh4X2dwdS5jICAgICB8ICA0ICstCiBkcml2ZXJzL2dwdS9kcm0vbXNtL21z
bV9kZWJ1Z2ZzLmMgICAgICAgICB8ICA3ICsrCiBkcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9kcnYu
YyAgICAgICAgICAgICB8IDE1ICstLS0KIGRyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2Rydi5oICAg
ICAgICAgICAgIHwgMTkgKysrLS0KIGRyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2dlbS5jICAgICAg
ICAgICAgIHwgNzYgKysrKysrLS0tLS0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9n
ZW0uaCAgICAgICAgICAgICB8IDUzICsrKysrKysrKy0tLS0KIGRyaXZlcnMvZ3B1L2RybS9tc20v
bXNtX2dlbV9zaHJpbmtlci5jICAgIHwgNTggKystLS0tLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9tc20vbXNtX2dlbV9zdWJtaXQuYyAgICAgIHwgMTcgKystLQogZHJpdmVycy9ncHUvZHJtL21z
bS9tc21fZ3B1LmMgICAgICAgICAgICAgfCA5NiArKysrKysrKysrKysrKy0tLS0tLS0tLQogZHJp
dmVycy9ncHUvZHJtL21zbS9tc21fZ3B1LmggICAgICAgICAgICAgfCAgNSArLQogZHJpdmVycy9n
cHUvZHJtL21zbS9tc21fcmluZ2J1ZmZlci5jICAgICAgfCAgMyArLQogZHJpdmVycy9ncHUvZHJt
L21zbS9tc21fcmluZ2J1ZmZlci5oICAgICAgfCAxMyArKy0KIDE0IGZpbGVzIGNoYW5nZWQsIDE4
OCBpbnNlcnRpb25zKCspLCAxOTQgZGVsZXRpb25zKC0pCgotLSAKMi4yNi4yCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxp
bmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5h
cm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
