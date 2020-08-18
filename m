Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 9905A247F29
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 09:15:03 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B4C8965FD7
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 07:15:02 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A7A8A66015; Tue, 18 Aug 2020 07:15:02 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7DE136156D;
	Tue, 18 Aug 2020 07:14:32 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9E5C36156D
 for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Aug 2020 07:14:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 91C02619B1; Tue, 18 Aug 2020 07:14:28 +0000 (UTC)
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by lists.linaro.org (Postfix) with ESMTPS id 5F43465F75
 for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Aug 2020 07:14:03 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id f5so8782828plr.9
 for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Aug 2020 00:14:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=k/dwpDf9Rw0FIDL5Sc/gG8pBkCydPXuy0KjMx4jHUik=;
 b=UnBWaqUk0VZuJqTK5Ne+yusCCSQpJTAcnKyDWf8vCLl0+RxkUyeVXZEEZq9QQ/AkHb
 7SlLmubTSD9x9Du8zzDZ7k63J6Q5yqpnpnE9ITOLU32FG9zfQF1pvfAbKXeXVhAVaBxo
 VETLfXdwCx+MSeHTy3oWU7GZc64/IC5n6tgF93RvdzR7TxcLX54MDoyxGm5RM7cUAvJh
 SZnORucvVUkX8rfLudMvMAnRa7pSxgosYvTOgDjjP86dPwI64MAyVO1HueBG67oF4+wJ
 k05D4HTFOwM1laGT1/59C65fB3lpHFa9zhNLaxQ6h89CSvNjRXRiB9YiLQ+ugWPdHRcM
 DS+g==
X-Gm-Message-State: AOAM531kfknSMhBNFU30ruVhBJtZEylqou4r+fKVfhj0Wef8pjin/kAJ
 9r07fD2cmi8XzhCieL0dP/ANZA==
X-Google-Smtp-Source: ABdhPJy8zjg37MiRqEGZWaBawQE/Hc7rg5SJ3tv+YlvBGWoUmk0KK37NeNdgmQU8rECJ8aPAUoaoMA==
X-Received: by 2002:a17:902:9890:: with SMTP id
 s16mr14139705plp.332.1597734842657; 
 Tue, 18 Aug 2020 00:14:02 -0700 (PDT)
Received: from localhost ([2401:fa00:8f:203:f693:9fff:fef4:a930])
 by smtp.gmail.com with ESMTPSA id w15sm22074294pjk.13.2020.08.18.00.13.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 18 Aug 2020 00:14:02 -0700 (PDT)
From: David Stevens <stevensd@chromium.org>
To: Gerd Hoffmann <kraxel@redhat.com>
Date: Tue, 18 Aug 2020 16:13:42 +0900
Message-Id: <20200818071343.3461203-3-stevensd@chromium.org>
X-Mailer: git-send-email 2.28.0.220.ged08abb693-goog
In-Reply-To: <20200818071343.3461203-1-stevensd@chromium.org>
References: <20200818071343.3461203-1-stevensd@chromium.org>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: dri-devel@lists.freedesktop.org, virtio-dev@lists.oasis-open.org,
 Thomas Zimmermann <tzimmermann@suse.de>,
 "Michael S . Tsirkin" <mst@redhat.com>, David Airlie <airlied@linux.ie>,
 Jason Wang <jasowang@redhat.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 virtualization@lists.linux-foundation.org, linaro-mm-sig@lists.linaro.org,
 David Stevens <stevensd@chromium.org>, Daniel Vetter <daniel@ffwll.ch>,
 linux-media@vger.kernel.org
Subject: [Linaro-mm-sig] [PATCH v7 2/3] virtio-gpu: add
	VIRTIO_GPU_F_RESOURCE_UUID feature
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

VGhpcyBmZWF0dXJlIGFsbG93cyB0aGUgZ3Vlc3QgdG8gcmVxdWVzdCBhIFVVSUQgZnJvbSB0aGUg
aG9zdCBmb3IgYQpwYXJ0aWN1bGFyIHZpcnRpb19ncHUgcmVzb3VyY2UuIFRoZSBVVUlEIGNhbiB0
aGVuIGJlIHNoYXJlZCB3aXRoIG90aGVyCnZpcnRpbyBkZXZpY2VzLCB0byBhbGxvdyB0aGUgb3Ro
ZXIgaG9zdCBkZXZpY2VzIHRvIGFjY2VzcyB0aGUKdmlydGlvX2dwdSdzIGNvcnJlc3BvbmRpbmcg
aG9zdCByZXNvdXJjZS4KClNpZ25lZC1vZmYtYnk6IERhdmlkIFN0ZXZlbnMgPHN0ZXZlbnNkQGNo
cm9taXVtLm9yZz4KLS0tCiBpbmNsdWRlL3VhcGkvbGludXgvdmlydGlvX2dwdS5oIHwgMTkgKysr
KysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKykKCmRpZmYg
LS1naXQgYS9pbmNsdWRlL3VhcGkvbGludXgvdmlydGlvX2dwdS5oIGIvaW5jbHVkZS91YXBpL2xp
bnV4L3ZpcnRpb19ncHUuaAppbmRleCAwYzg1OTE0ZDkzNjkuLjk3MjFkNThiNGQ1OCAxMDA2NDQK
LS0tIGEvaW5jbHVkZS91YXBpL2xpbnV4L3ZpcnRpb19ncHUuaAorKysgYi9pbmNsdWRlL3VhcGkv
bGludXgvdmlydGlvX2dwdS5oCkBAIC01MCw2ICs1MCwxMCBAQAogICogVklSVElPX0dQVV9DTURf
R0VUX0VESUQKICAqLwogI2RlZmluZSBWSVJUSU9fR1BVX0ZfRURJRCAgICAgICAgICAgICAgICAx
CisvKgorICogVklSVElPX0dQVV9DTURfUkVTT1VSQ0VfQVNTSUdOX1VVSUQKKyAqLworI2RlZmlu
ZSBWSVJUSU9fR1BVX0ZfUkVTT1VSQ0VfVVVJRCAgICAgICAyCiAKIGVudW0gdmlydGlvX2dwdV9j
dHJsX3R5cGUgewogCVZJUlRJT19HUFVfVU5ERUZJTkVEID0gMCwKQEAgLTY2LDYgKzcwLDcgQEAg
ZW51bSB2aXJ0aW9fZ3B1X2N0cmxfdHlwZSB7CiAJVklSVElPX0dQVV9DTURfR0VUX0NBUFNFVF9J
TkZPLAogCVZJUlRJT19HUFVfQ01EX0dFVF9DQVBTRVQsCiAJVklSVElPX0dQVV9DTURfR0VUX0VE
SUQsCisJVklSVElPX0dQVV9DTURfUkVTT1VSQ0VfQVNTSUdOX1VVSUQsCiAKIAkvKiAzZCBjb21t
YW5kcyAqLwogCVZJUlRJT19HUFVfQ01EX0NUWF9DUkVBVEUgPSAweDAyMDAsCkBAIC04Nyw2ICs5
Miw3IEBAIGVudW0gdmlydGlvX2dwdV9jdHJsX3R5cGUgewogCVZJUlRJT19HUFVfUkVTUF9PS19D
QVBTRVRfSU5GTywKIAlWSVJUSU9fR1BVX1JFU1BfT0tfQ0FQU0VULAogCVZJUlRJT19HUFVfUkVT
UF9PS19FRElELAorCVZJUlRJT19HUFVfUkVTUF9PS19SRVNPVVJDRV9VVUlELAogCiAJLyogZXJy
b3IgcmVzcG9uc2VzICovCiAJVklSVElPX0dQVV9SRVNQX0VSUl9VTlNQRUMgPSAweDEyMDAsCkBA
IC0zNDAsNCArMzQ2LDE3IEBAIGVudW0gdmlydGlvX2dwdV9mb3JtYXRzIHsKIAlWSVJUSU9fR1BV
X0ZPUk1BVF9SOEc4QjhYOF9VTk9STSAgPSAxMzQsCiB9OwogCisvKiBWSVJUSU9fR1BVX0NNRF9S
RVNPVVJDRV9BU1NJR05fVVVJRCAqLworc3RydWN0IHZpcnRpb19ncHVfcmVzb3VyY2VfYXNzaWdu
X3V1aWQgeworCXN0cnVjdCB2aXJ0aW9fZ3B1X2N0cmxfaGRyIGhkcjsKKwlfX2xlMzIgcmVzb3Vy
Y2VfaWQ7CisJX19sZTMyIHBhZGRpbmc7Cit9OworCisvKiBWSVJUSU9fR1BVX1JFU1BfT0tfUkVT
T1VSQ0VfVVVJRCAqLworc3RydWN0IHZpcnRpb19ncHVfcmVzcF9yZXNvdXJjZV91dWlkIHsKKwlz
dHJ1Y3QgdmlydGlvX2dwdV9jdHJsX2hkciBoZHI7CisJX191OCB1dWlkWzE2XTsKK307CisKICNl
bmRpZgotLSAKMi4yOC4wLjIyMC5nZWQwOGFiYjY5My1nb29nCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApM
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21h
aWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
