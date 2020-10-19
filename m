Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id EF21A292FCB
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Oct 2020 22:46:01 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9F718665AA
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Oct 2020 20:46:00 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8FE3D66587; Mon, 19 Oct 2020 20:46:00 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7D262610E6;
	Mon, 19 Oct 2020 20:45:28 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4F4DE60B69
 for <linaro-mm-sig@lists.linaro.org>; Mon, 19 Oct 2020 20:45:25 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 33BDB610E6; Mon, 19 Oct 2020 20:45:25 +0000 (UTC)
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by lists.linaro.org (Postfix) with ESMTPS id 2161760B69
 for <linaro-mm-sig@lists.linaro.org>; Mon, 19 Oct 2020 20:45:24 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id l18so708186pgg.0
 for <linaro-mm-sig@lists.linaro.org>; Mon, 19 Oct 2020 13:45:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VYlmVNr0dY3l4uhDIFjX37H6wetw4+WykhKJz4MPamw=;
 b=NZAPtzQ39fKGM0InA5TqMnFo9yU7SPcbM6pHcilhWldaXfeelF2RzaIroXHvSLhNrS
 jOTTinHAgurtjTXF+gOebunSOHQrXS3QAGNWV+qc0mTPPSC4/W3HxvYHmPc3bfziiWLI
 ETE95XCSCYfFHYAMJSuLKvjxLo+w+qrqf05Tz/ULTBaN+DiGFKzO7u0HV2+GQo/aySzD
 46DGTRFSG8NwWANjCcFl1QrG+NX9nnCezs6PDGTo7KGYAqMg16kGXnJz5KR4PjgPUIIp
 qRGs7Uf4ygBXLY3FFgioBB8OUOEaE/8yOsLsJCKU6YxUE32mGNEKDKMGstudMOSkstYK
 Dycg==
X-Gm-Message-State: AOAM5339pzmLcdAk7Y6OKPoGfHvte7evahz1yKY9u4o569DomeZkcrb8
 doqfs20hoUwvQmrlfktcEq4=
X-Google-Smtp-Source: ABdhPJymNRUHlbOevPw6zBiQT2pmXXAjTcTJ54Q1CuigBS6O5RZ8CtU1GZZz2Y9Z3I8WiLFEGOOOUg==
X-Received: by 2002:a63:778f:: with SMTP id s137mr1293614pgc.7.1603140323111; 
 Mon, 19 Oct 2020 13:45:23 -0700 (PDT)
Received: from localhost (c-73-25-156-94.hsd1.or.comcast.net. [73.25.156.94])
 by smtp.gmail.com with ESMTPSA id
 x18sm431812pga.49.2020.10.19.13.45.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Oct 2020 13:45:21 -0700 (PDT)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Mon, 19 Oct 2020 13:46:01 -0700
Message-Id: <20201019204636.139997-1-robdclark@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Liviu Dudau <liviu.dudau@arm.com>, Akhil P Oommen <akhilpo@codeaurora.org>,
 Harigovindan P <harigovi@codeaurora.org>, Eric Anholt <eric@anholt.net>,
 AngeloGioacchino Del Regno <kholk11@gmail.com>,
 Sam Ravnborg <sam@ravnborg.org>, Emil Velikov <emil.velikov@collabora.com>,
 Rob Clark <robdclark@chromium.org>, Jonathan Marek <jonathan@marek.ca>,
 Matthias Kaehlcke <mka@chromium.org>, Thierry Reding <treding@nvidia.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 "open list:DRM DRIVER FOR MSM ADRENO GPU" <linux-arm-msm@vger.kernel.org>,
 Sharat Masetty <smasetty@codeaurora.org>,
 Abhinav Kumar <abhinavk@codeaurora.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rajendra Nayak <rnayak@codeaurora.org>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 open list <linux-kernel@vger.kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Brian Masney <masneyb@onstation.org>,
 "open list:DRM DRIVER FOR MSM ADRENO GPU" <freedreno@lists.freedesktop.org>
Subject: [Linaro-mm-sig] [PATCH v3 00/23] drm/msm: de-struct_mutex-ification
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
IGNvbnZlcnQgdG8gb2JqLT5yZXN2IGxvY2tpbmcgKGRhbnZldCkKdjM6IGZpeCBnZXRfdmFkZHIg
bG9ja2luZyBmb3IgbGVnYWN5IHVzZXJzcGFjZSAocmVsb2NzKSwgZGV2Y29yZWR1bXAsCiAgICBh
bmQgcmQvaGFuZ3JkCgpSb2IgQ2xhcmsgKDIzKToKICBkcm0vbXNtOiBGaXggYSBjb3VwbGUgaW5j
b3JyZWN0IHVzYWdlcyBvZiBnZXRfdmFkZHJfYWN0aXZlKCkKICBkcm0vbXNtL2dlbTogQWRkIG9i
ai0+bG9jayB3cmFwcGVycwogIGRybS9tc20vZ2VtOiBSZW5hbWUgaW50ZXJuYWwgZ2V0X2lvdmFf
bG9ja2VkIGhlbHBlcgogIGRybS9tc20vZ2VtOiBNb3ZlIHByb3RvdHlwZXMgdG8gbXNtX2dlbS5o
CiAgZHJtL21zbS9nZW06IEFkZCBzb21lIF9sb2NrZWQoKSBoZWxwZXJzCiAgZHJtL21zbS9nZW06
IE1vdmUgbG9ja2luZyBpbiBzaHJpbmtlciBwYXRoCiAgZHJtL21zbS9zdWJtaXQ6IE1vdmUgY29w
eV9mcm9tX3VzZXIgYWhlYWQgb2YgbG9ja2luZyBib3MKICBkcm0vbXNtOiBEbyBycG0gZ2V0IHNv
b25lciBpbiB0aGUgc3VibWl0IHBhdGgKICBkcm0vbXNtL2dlbTogU3dpdGNoIG92ZXIgdG8gb2Jq
LT5yZXN2IGZvciBsb2NraW5nCiAgZHJtL21zbTogVXNlIGNvcnJlY3QgZHJtX2dlbV9vYmplY3Rf
cHV0KCkgaW4gZmFpbCBjYXNlCiAgZHJtL21zbTogRHJvcCBjaGF0dHkgdHJhY2UKICBkcm0vbXNt
OiBNb3ZlIHVwZGF0ZV9mZW5jZXMoKQogIGRybS9tc206IEFkZCBwcml2LT5tbV9sb2NrIHRvIHBy
b3RlY3QgYWN0aXZlL2luYWN0aXZlIGxpc3RzCiAgZHJtL21zbTogRG9jdW1lbnQgYW5kIHJlbmFt
ZSBwcmVlbXB0X2xvY2sKICBkcm0vbXNtOiBQcm90ZWN0IHJpbmctPnN1Ym1pdHMgd2l0aCBpdCdz
IG93biBsb2NrCiAgZHJtL21zbTogUmVmY291bnQgc3VibWl0cwogIGRybS9tc206IFJlbW92ZSBv
YmotPmdwdQogIGRybS9tc206IERyb3Agc3RydWN0X211dGV4IGZyb20gdGhlIHJldGlyZSBwYXRo
CiAgZHJtL21zbTogRHJvcCBzdHJ1Y3RfbXV0ZXggaW4gZnJlZV9vYmplY3QoKSBwYXRoCiAgZHJt
L21zbTogUmVtb3ZlIG1zbV9nZW1fZnJlZV93b3JrCiAgZHJtL21zbTogRHJvcCBzdHJ1Y3RfbXV0
ZXggaW4gbWFkdmlzZSBwYXRoCiAgZHJtL21zbTogRHJvcCBzdHJ1Y3RfbXV0ZXggaW4gc2hyaW5r
ZXIgcGF0aAogIGRybS9tc206IERvbid0IGltcGxpY2l0LXN5bmMgaWYgb25seSBhIHNpbmdsZSBy
aW5nCgogZHJpdmVycy9ncHUvZHJtL21zbS9hZHJlbm8vYTV4eF9ncHUuYyAgICAgfCAgIDYgKy0K
IGRyaXZlcnMvZ3B1L2RybS9tc20vYWRyZW5vL2E1eHhfcHJlZW1wdC5jIHwgIDEyICstCiBkcml2
ZXJzL2dwdS9kcm0vbXNtL2FkcmVuby9hNnh4X2dwdS5jICAgICB8ICAgNiArLQogZHJpdmVycy9n
cHUvZHJtL21zbS9kaXNwL21kcDQvbWRwNF9jcnRjLmMgfCAgIDEgKwogZHJpdmVycy9ncHUvZHJt
L21zbS9kaXNwL21kcDUvbWRwNV9jcnRjLmMgfCAgIDEgKwogZHJpdmVycy9ncHUvZHJtL21zbS9k
c2kvZHNpX2hvc3QuYyAgICAgICAgfCAgIDEgKwogZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZGVi
dWdmcy5jICAgICAgICAgfCAgIDcgKwogZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZHJ2LmMgICAg
ICAgICAgICAgfCAgMjEgKy0KIGRyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2Rydi5oICAgICAgICAg
ICAgIHwgIDczICstLS0tLQogZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZmJkZXYuYyAgICAgICAg
ICAgfCAgIDEgKwogZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZ2VtLmMgICAgICAgICAgICAgfCAy
NjYgKysrKysrKysrKystLS0tLS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZ2VtLmgg
ICAgICAgICAgICAgfCAxMzMgKysrKysrKysrLS0KIGRyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2dl
bV9zaHJpbmtlci5jICAgIHwgIDgxICsrLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2dl
bV9zdWJtaXQuYyAgICAgIHwgMTU4ICsrKysrKysrLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9tc20v
bXNtX2dwdS5jICAgICAgICAgICAgIHwgMTEwICsrKysrLS0tLQogZHJpdmVycy9ncHUvZHJtL21z
bS9tc21fZ3B1LmggICAgICAgICAgICAgfCAgIDUgKy0KIGRyaXZlcnMvZ3B1L2RybS9tc20vbXNt
X3JkLmMgICAgICAgICAgICAgIHwgICAyICstCiBkcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9yaW5n
YnVmZmVyLmMgICAgICB8ICAgMyArLQogZHJpdmVycy9ncHUvZHJtL21zbS9tc21fcmluZ2J1ZmZl
ci5oICAgICAgfCAgMTMgKy0KIDE5IGZpbGVzIGNoYW5nZWQsIDQ5NSBpbnNlcnRpb25zKCspLCA0
MDUgZGVsZXRpb25zKC0pCgotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlz
dGluZm8vbGluYXJvLW1tLXNpZwo=
