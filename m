Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id DAC8D1CF0FA
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 11:05:39 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 118B36618A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 09:05:39 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 03416661BF; Tue, 12 May 2020 09:05:39 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F1025619F3;
	Tue, 12 May 2020 09:00:43 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 754BD61885
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:00:09 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6744D61999; Tue, 12 May 2020 09:00:09 +0000 (UTC)
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by lists.linaro.org (Postfix) with ESMTPS id A739361885
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:00:01 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id y24so22393985wma.4
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 02:00:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Z86jDMPjYosEVmpvz8g87itNg+tEFmiX7DLzwmjjruY=;
 b=CGVXycQjKHuimNoHxQ61O2kov5Pd4sN11bsLOIC/N5+FbC94lx220G3YHc3WdfXZtU
 0+FzxqxrzbDf2Bal6RQ3MFM6QS6ATPxDLxNXT0V9AsyPKHweChNtb9+FRmbjgZyH8HJ3
 sFRBqwR8YiLtDh9PlpNRlRCN/MFzR2o2Mxbz13gRdhMXAs5Wk4nlVk4LzMMwuHbHCuwG
 mqF9TJJGWuGfYl+NKEK9ba87fXHQytbiapgY0Oc09OVdBuAc2FEfOLk+3EiFKbpFXShE
 I13KNb9uwlhAVB/PgI++2vGfB/GFAAHlNcbdjy8aFVcmXiUxuj/pUp8sZ6qHvIUEAIBd
 +2iA==
X-Gm-Message-State: AGi0PuaTkiubGfHOmdXLqC5AI3QVMkDB0mRtbqoLEbrbcc1ShFLuK2ms
 xJWEbp6wAGWxmLRM0d6S7sfjUA==
X-Google-Smtp-Source: APiQypJT+3YqWFL2wx/F/qRbovKxB7nonvtIP8MsamotNvxRkHjM8KCOP8ZK10mJhOIGdoSiUWqbbA==
X-Received: by 2002:a1c:6344:: with SMTP id x65mr19610953wmb.51.1589274000857; 
 Tue, 12 May 2020 02:00:00 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id y10sm18845457wrd.95.2020.05.12.01.59.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 May 2020 02:00:00 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue, 12 May 2020 10:59:31 +0200
Message-Id: <20200512085944.222637-5-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200512085944.222637-1-daniel.vetter@ffwll.ch>
References: <20200512085944.222637-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>,
 Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>, linux-rdma@vger.kernel.org,
 intel-gfx@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>, amd-gfx@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, Daniel Vetter <daniel@ffwll.ch>,
 Daniel Vetter <daniel.vetter@intel.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Subject: [Linaro-mm-sig] [RFC 04/17] drm/vkms: Annotate vblank timer
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

VGhpcyBpcyBuZWVkZWQgdG8gc2lnbmFsIHRoZSBmZW5jZXMgZnJvbSBwYWdlIGZsaXBzLCBhbm5v
dGF0ZSBpdAphY2NvcmRpbmdseS4gV2UgbmVlZCB0byBhbm5vdGF0ZSBlbnRpcmUgdGltZXIgY2Fs
bGJhY2sgc2luY2UgaWYgd2UgZ2V0CnN0dWNrIGFueXdoZXJlIGluIHRoZXJlLCB0aGVuIHRoZSB0
aW1lciBzdG9wcywgYW5kIGhlbmNlIGZlbmNlcyBzdG9wLgpKdXN0IGFubm90YXRpbmcgdGhlIHRv
cCBwYXJ0IHRoYXQgZG9lcyB0aGUgdmJsYW5rIGhhbmRsaW5nIGlzbid0CmVub3VnaC4KCkNjOiBs
aW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcKQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJv
Lm9yZwpDYzogbGludXgtcmRtYUB2Z2VyLmtlcm5lbC5vcmcKQ2M6IGFtZC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCkNjOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCkNjOiBDaHJp
cyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0
IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+CkNjOiBDaHJpc3RpYW4gS8O2bmln
IDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+ClNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIg
PGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgpDYzogUm9kcmlnbyBTaXF1ZWlyYSA8cm9kcmlnb3Np
cXVlaXJhbWVsb0BnbWFpbC5jb20+CkNjOiBIYW5lZW4gTW9oYW1tZWQgPGhhbW9oYW1tZWQuc2FA
Z21haWwuY29tPgpDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZmd2xsLmNoPgotLS0KIGRyaXZl
cnMvZ3B1L2RybS92a21zL3ZrbXNfY3J0Yy5jIHwgOCArKysrKysrLQogMSBmaWxlIGNoYW5nZWQs
IDcgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS92a21zL3ZrbXNfY3J0Yy5jIGIvZHJpdmVycy9ncHUvZHJtL3ZrbXMvdmttc19jcnRjLmMK
aW5kZXggYWM4NWUxNzQyOGY4Li5hNTNhNDA4NDhhNzIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS92a21zL3ZrbXNfY3J0Yy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS92a21zL3ZrbXNfY3J0
Yy5jCkBAIC0xLDUgKzEsNyBAQAogLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAr
CiAKKyNpbmNsdWRlIDxsaW51eC9kbWEtZmVuY2UuaD4KKwogI2luY2x1ZGUgPGRybS9kcm1fYXRv
bWljLmg+CiAjaW5jbHVkZSA8ZHJtL2RybV9hdG9taWNfaGVscGVyLmg+CiAjaW5jbHVkZSA8ZHJt
L2RybV9wcm9iZV9oZWxwZXIuaD4KQEAgLTE0LDcgKzE2LDkgQEAgc3RhdGljIGVudW0gaHJ0aW1l
cl9yZXN0YXJ0IHZrbXNfdmJsYW5rX3NpbXVsYXRlKHN0cnVjdCBocnRpbWVyICp0aW1lcikKIAlz
dHJ1Y3QgZHJtX2NydGMgKmNydGMgPSAmb3V0cHV0LT5jcnRjOwogCXN0cnVjdCB2a21zX2NydGNf
c3RhdGUgKnN0YXRlOwogCXU2NCByZXRfb3ZlcnJ1bjsKLQlib29sIHJldDsKKwlib29sIHJldCwg
ZmVuY2VfY29va2llOworCisJZmVuY2VfY29va2llID0gZG1hX2ZlbmNlX2JlZ2luX3NpZ25hbGxp
bmcoKTsKIAogCXJldF9vdmVycnVuID0gaHJ0aW1lcl9mb3J3YXJkX25vdygmb3V0cHV0LT52Ymxh
bmtfaHJ0aW1lciwKIAkJCQkJICBvdXRwdXQtPnBlcmlvZF9ucyk7CkBAIC00OSw2ICs1Myw4IEBA
IHN0YXRpYyBlbnVtIGhydGltZXJfcmVzdGFydCB2a21zX3ZibGFua19zaW11bGF0ZShzdHJ1Y3Qg
aHJ0aW1lciAqdGltZXIpCiAJCQlEUk1fREVCVUdfRFJJVkVSKCJDb21wb3NlciB3b3JrZXIgYWxy
ZWFkeSBxdWV1ZWRcbiIpOwogCX0KIAorCWRtYV9mZW5jZV9lbmRfc2lnbmFsbGluZyhmZW5jZV9j
b29raWUpOworCiAJcmV0dXJuIEhSVElNRVJfUkVTVEFSVDsKIH0KIAotLSAKMi4yNi4yCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2ln
IG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0
cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
