Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BD7B247F1D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 09:14:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 89C9365FCE
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 07:14:24 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 7F9A865F8C; Tue, 18 Aug 2020 07:14:24 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A552160E68;
	Tue, 18 Aug 2020 07:13:53 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C280060BD7
 for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Aug 2020 07:13:51 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id AF68A60E68; Tue, 18 Aug 2020 07:13:51 +0000 (UTC)
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by lists.linaro.org (Postfix) with ESMTPS id 8E65E60BD7
 for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Aug 2020 07:13:50 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id bh1so8786036plb.12
 for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Aug 2020 00:13:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BgH1OQJe0vDcind90faXlTgA3YjOyLHfHtqyBUp1Czc=;
 b=p+nUaugMat1/+aK04itPiImIMijiAko+a68AT3FN1qjow92hIzvDNe3lwH+fw67tv/
 VSPFsw9I7B5TS6x3AZJtTAsKAfi6pPguFbX0C29+2llq0+p5d6tkK7QpBVzD6UD8rlrY
 bxAY6d5MZmhdmCKcSjEhppwgI2xCW5B6098Hzk1D2aVKtX8A6s7rg498ltnzp1JkWJ2n
 EgLFSWXSxFoS63IIZeaY+XW8E7eW6QWQ+FOiMHBAcKjQpSlPPSsXcki8Rl/FVLByCES/
 Jpzw3IDnoE2ALJg7lj8Rld7BDADiI9o4u8zDUBbAi78TN8g2eTIuAI91Os0RFv0pdw9m
 2+sw==
X-Gm-Message-State: AOAM533RQL/eKg+RfNYEvnmyaHjpM8QTBcwGIIq6BftA01Lz9AnAHEhv
 Aosmx0zN7yYgrRgEJHvJXZ6vog==
X-Google-Smtp-Source: ABdhPJxuueydVbd6bk9DsX+V9TjGBCXpTewyWvogJZRb7m1T+Taz+F9x0MJK+8gr+vU6zEAzQBkJ7Q==
X-Received: by 2002:a17:90b:1c06:: with SMTP id
 oc6mr14823420pjb.182.1597734829705; 
 Tue, 18 Aug 2020 00:13:49 -0700 (PDT)
Received: from localhost ([2401:fa00:8f:203:f693:9fff:fef4:a930])
 by smtp.gmail.com with ESMTPSA id g33sm15709005pgg.46.2020.08.18.00.13.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 18 Aug 2020 00:13:49 -0700 (PDT)
From: David Stevens <stevensd@chromium.org>
To: Gerd Hoffmann <kraxel@redhat.com>
Date: Tue, 18 Aug 2020 16:13:40 +0900
Message-Id: <20200818071343.3461203-1-stevensd@chromium.org>
X-Mailer: git-send-email 2.28.0.220.ged08abb693-goog
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
Subject: [Linaro-mm-sig] [PATCH v7 0/3] Support virtio cross-device resources
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

VGhpcyBwYXRjaHNldCBpbXBsZW1lbnRzIHRoZSBjdXJyZW50IHByb3Bvc2FsIGZvciB2aXJ0aW8g
Y3Jvc3MtZGV2aWNlCnJlc291cmNlIHNoYXJpbmcgWzFdLiBJdCB3aWxsIGJlIHVzZWQgdG8gaW1w
b3J0IHZpcnRpbyByZXNvdXJjZXMgaW50bwp0aGUgdmlydGlvLXZpZGVvIGRyaXZlciBjdXJyZW50
bHkgdW5kZXIgZGlzY3Vzc2lvbiBbMl0uIFRoZSBwYXRjaAp1bmRlciBjb25zaWRlcmF0aW9uIHRv
IGFkZCBzdXBwb3J0IGluIHRoZSB2aXJ0aW8tdmlkZW8gZHJpdmVyIGlzIFszXS4KSXQgdXNlcyB0
aGUgQVBJcyBmcm9tIHYzIG9mIHRoaXMgc2VyaWVzLCBidXQgdGhlIGNoYW5nZXMgdG8gdXBkYXRl
IGl0CmFyZSByZWxhdGl2ZWx5IG1pbm9yLgoKVGhpcyBwYXRjaHNldCBhZGRzIGEgbmV3IGZsYXZv
ciBvZiBkbWEtYnVmcyB0aGF0IHN1cHBvcnRzIHF1ZXJ5aW5nIHRoZQp1bmRlcmx5aW5nIHZpcnRp
byBvYmplY3QgVVVJRCwgYXMgd2VsbCBhcyBhZGRpbmcgc3VwcG9ydCBmb3IgZXhwb3J0aW5nCnJl
c291cmNlcyBmcm9tIHZpcnRncHUuCgpbMV0gaHR0cHM6Ly9tYXJrbWFpbC5vcmcvdGhyZWFkLzJ5
cGp0NWNmZXUzbTZseHUKWzJdIGh0dHBzOi8vbWFya21haWwub3JnL3RocmVhZC9wNWQzazU2NnNy
dGR0dXRlClszXSBodHRwczovL21hcmttYWlsLm9yZy90aHJlYWQvajR4bHFhYWltMjY2cXBrcwoK
djYgLT4gdjcgY2hhbmdlczoKIC0gRml4IG1vc3Qgc3RyaWN0IGNoZWNrcGF0Y2ggY29tbWVudHMK
CkRhdmlkIFN0ZXZlbnMgKDMpOgogIHZpcnRpbzogYWRkIGRtYS1idWYgc3VwcG9ydCBmb3IgZXhw
b3J0ZWQgb2JqZWN0cwogIHZpcnRpby1ncHU6IGFkZCBWSVJUSU9fR1BVX0ZfUkVTT1VSQ0VfVVVJ
RCBmZWF0dXJlCiAgZHJtL3ZpcnRpbzogU3VwcG9ydCB2aXJ0Z3B1IGV4cG9ydGVkIHJlc291cmNl
cwoKIGRyaXZlcnMvZ3B1L2RybS92aXJ0aW8vdmlydGdwdV9kcnYuYyAgIHwgIDMgKwogZHJpdmVy
cy9ncHUvZHJtL3ZpcnRpby92aXJ0Z3B1X2Rydi5oICAgfCAyMSArKysrKysKIGRyaXZlcnMvZ3B1
L2RybS92aXJ0aW8vdmlydGdwdV9rbXMuYyAgIHwgIDQgKysKIGRyaXZlcnMvZ3B1L2RybS92aXJ0
aW8vdmlydGdwdV9wcmltZS5jIHwgOTYgKysrKysrKysrKysrKysrKysrKysrKysrKy0KIGRyaXZl
cnMvZ3B1L2RybS92aXJ0aW8vdmlydGdwdV92cS5jICAgIHwgNTUgKysrKysrKysrKysrKysrCiBk
cml2ZXJzL3ZpcnRpby9NYWtlZmlsZSAgICAgICAgICAgICAgICB8ICAyICstCiBkcml2ZXJzL3Zp
cnRpby92aXJ0aW8uYyAgICAgICAgICAgICAgICB8ICA2ICsrCiBkcml2ZXJzL3ZpcnRpby92aXJ0
aW9fZG1hX2J1Zi5jICAgICAgICB8IDg1ICsrKysrKysrKysrKysrKysrKysrKysrCiBpbmNsdWRl
L2xpbnV4L3ZpcnRpby5oICAgICAgICAgICAgICAgICB8ICAxICsKIGluY2x1ZGUvbGludXgvdmly
dGlvX2RtYV9idWYuaCAgICAgICAgIHwgMzcgKysrKysrKysrKwogaW5jbHVkZS91YXBpL2xpbnV4
L3ZpcnRpb19ncHUuaCAgICAgICAgfCAxOSArKysrKwogMTEgZmlsZXMgY2hhbmdlZCwgMzI1IGlu
c2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy92
aXJ0aW8vdmlydGlvX2RtYV9idWYuYwogY3JlYXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUvbGludXgv
dmlydGlvX2RtYV9idWYuaAoKLS0gCjIuMjguMC4yMjAuZ2VkMDhhYmI2OTMtZ29vZwoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBt
YWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMu
bGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
