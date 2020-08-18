Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BA54247BE7
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 03:38:28 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4C50461813
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 01:38:27 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 41364619D1; Tue, 18 Aug 2020 01:38:27 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 874E7617EF;
	Tue, 18 Aug 2020 01:37:57 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E2EE560665
 for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Aug 2020 01:37:53 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C84C0617EF; Tue, 18 Aug 2020 01:37:53 +0000 (UTC)
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by lists.linaro.org (Postfix) with ESMTPS id 7EB1C60665
 for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Aug 2020 01:37:52 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id g7so7314828plq.1
 for <linaro-mm-sig@lists.linaro.org>; Mon, 17 Aug 2020 18:37:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VKh9IL3wAtvMWfoyCMPIJCvNUxcYwDemhkEsAUpJ8lo=;
 b=Y2tuw5iV+HkSrh1amfxb3vLJQTScS4uMyXzouCOBwt61eKOfRk/jXv4BpVCPJ1HoFI
 oNaCy8q4TPBJdueOdBlQhfBcd3jDepY7wAjUJsl34RY0ohU1YNrOBQDCxlTgtS/ppJXC
 QQB26nspbCTqS5nD58srOWAJkcGzfO3hOhZ2cpXOb+ann+fsqxMj5DtRfuQ8hsywjuSp
 zVjsx/od8YByNBjD+MsQ+/EuukfasxDP38QgLNIr09WzpE20+Fy1YxE2hhSf12NlRUcw
 UEaI4bXROgVt4mHnyrABx6T9WI+UkajnFva8dybyx6dM7Zic7QEeoKmQSBqU8h5xFw5n
 uvzg==
X-Gm-Message-State: AOAM533CNPIx8IaJRnF5tF8rNnyMmT/oK6lWW/6MJVcz4F50/oWXw6Re
 PvgMqZFTaCN4pdG02XTPShszRg==
X-Google-Smtp-Source: ABdhPJwBgf3Py2LgsmCVLyQWvxnS2N46UEoOPZjDMDI6aKwBwSdp/Daf1fAgtWB28KQKG/yQd4XxNg==
X-Received: by 2002:a17:90b:1c06:: with SMTP id
 oc6mr14032262pjb.182.1597714671684; 
 Mon, 17 Aug 2020 18:37:51 -0700 (PDT)
Received: from localhost ([2401:fa00:8f:203:f693:9fff:fef4:a930])
 by smtp.gmail.com with ESMTPSA id e8sm21616835pfd.34.2020.08.17.18.37.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 17 Aug 2020 18:37:50 -0700 (PDT)
From: David Stevens <stevensd@chromium.org>
To: Gerd Hoffmann <kraxel@redhat.com>
Date: Tue, 18 Aug 2020 10:37:41 +0900
Message-Id: <20200818013744.3327271-1-stevensd@chromium.org>
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
Subject: [Linaro-mm-sig] [PATCH v6 0/3] Support virtio cross-device resources
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
djUgLT4gdjYgY2hhbmdlczoKIC0gRml4ID44MCBjaGFyYWN0ZXIgY29tbWVudAoKRGF2aWQgU3Rl
dmVucyAoMyk6CiAgdmlydGlvOiBhZGQgZG1hLWJ1ZiBzdXBwb3J0IGZvciBleHBvcnRlZCBvYmpl
Y3RzCiAgdmlydGlvLWdwdTogYWRkIFZJUlRJT19HUFVfRl9SRVNPVVJDRV9VVUlEIGZlYXR1cmUK
ICBkcm0vdmlydGlvOiBTdXBwb3J0IHZpcnRncHUgZXhwb3J0ZWQgcmVzb3VyY2VzCgogZHJpdmVy
cy9ncHUvZHJtL3ZpcnRpby92aXJ0Z3B1X2Rydi5jICAgfCAgMyArCiBkcml2ZXJzL2dwdS9kcm0v
dmlydGlvL3ZpcnRncHVfZHJ2LmggICB8IDIwICsrKysrKwogZHJpdmVycy9ncHUvZHJtL3ZpcnRp
by92aXJ0Z3B1X2ttcy5jICAgfCAgNCArKwogZHJpdmVycy9ncHUvZHJtL3ZpcnRpby92aXJ0Z3B1
X3ByaW1lLmMgfCA5NiArKysrKysrKysrKysrKysrKysrKysrKysrLQogZHJpdmVycy9ncHUvZHJt
L3ZpcnRpby92aXJ0Z3B1X3ZxLmMgICAgfCA1NSArKysrKysrKysrKysrKysKIGRyaXZlcnMvdmly
dGlvL01ha2VmaWxlICAgICAgICAgICAgICAgIHwgIDIgKy0KIGRyaXZlcnMvdmlydGlvL3ZpcnRp
by5jICAgICAgICAgICAgICAgIHwgIDYgKysKIGRyaXZlcnMvdmlydGlvL3ZpcnRpb19kbWFfYnVm
LmMgICAgICAgIHwgODIgKysrKysrKysrKysrKysrKysrKysrKwogaW5jbHVkZS9saW51eC92aXJ0
aW8uaCAgICAgICAgICAgICAgICAgfCAgMSArCiBpbmNsdWRlL2xpbnV4L3ZpcnRpb19kbWFfYnVm
LmggICAgICAgICB8IDM3ICsrKysrKysrKysKIGluY2x1ZGUvdWFwaS9saW51eC92aXJ0aW9fZ3B1
LmggICAgICAgIHwgMTkgKysrKysKIDExIGZpbGVzIGNoYW5nZWQsIDMyMSBpbnNlcnRpb25zKCsp
LCA0IGRlbGV0aW9ucygtKQogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvdmlydGlvL3ZpcnRp
b19kbWFfYnVmLmMKIGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL2xpbnV4L3ZpcnRpb19kbWFf
YnVmLmgKCi0tIAoyLjI4LjAuMjIwLmdlZDA4YWJiNjkzLWdvb2cKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
