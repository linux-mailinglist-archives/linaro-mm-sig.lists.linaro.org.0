Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EE91297500
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 23 Oct 2020 18:50:44 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 27D73665EE
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 23 Oct 2020 16:50:43 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 19297665FA; Fri, 23 Oct 2020 16:50:43 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A92B3665C3;
	Fri, 23 Oct 2020 16:50:09 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 27229665AB
 for <linaro-mm-sig@lists.linaro.org>; Fri, 23 Oct 2020 16:50:07 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 0C861665C3; Fri, 23 Oct 2020 16:50:07 +0000 (UTC)
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com
 [209.85.214.172])
 by lists.linaro.org (Postfix) with ESMTPS id 967D2665AB
 for <linaro-mm-sig@lists.linaro.org>; Fri, 23 Oct 2020 16:50:05 +0000 (UTC)
Received: by mail-pl1-f172.google.com with SMTP id r3so1167540plo.1
 for <linaro-mm-sig@lists.linaro.org>; Fri, 23 Oct 2020 09:50:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nBPnkSzxv9sPok1QPqQrqR3RAN+aeKw0AQbLebVLUkg=;
 b=KRRiCuyGV2Jsxva075XBWlYOoEffMXdvv0a3qx7d91EV+P9ScYMWwEa/fq4vdN9zRV
 JVTSRDAHdWCMbgr+zwC3d7hDRt/OH0IO2cad3ueC/dUlZQ1DRYV3ZnEfMFS82h8XdscK
 q0CHMsHZLtv4i6E4zgSredQ5gVU7GU49tuREBf2ucENjjnA68q/W7nQg6ppneYR8o4Sq
 cMePhN2E67vqIZMqUnYkho8yJo9tSX7VM4Kh38kki4VWWaY1SPXo9kTjp+Ns4WQ9rpL+
 LPefVbHaqUe6H9545ChxkfsRE8+ACEGKaMELN4lFlLQCyg+By4zXDlCH9LI6hB4G/dNw
 ZLlw==
X-Gm-Message-State: AOAM532d8an7UpeUWyMLVAZS4LBb3HbaEVQhN0whoIN84ClqrlcGB/oL
 YORAWZ0TInKIO2K5YRwJWD4=
X-Google-Smtp-Source: ABdhPJyHkDmRF2Pq6NHPnw+ueoQTE8icbQuxnnOlfwxFMwu6/Tb1NJ3F9e0raXPtHEKsO3ge9RuTEA==
X-Received: by 2002:a17:902:9a84:b029:d2:9390:5e6 with SMTP id
 w4-20020a1709029a84b02900d2939005e6mr3262382plp.37.1603471803833; 
 Fri, 23 Oct 2020 09:50:03 -0700 (PDT)
Received: from localhost (c-73-25-156-94.hsd1.or.comcast.net. [73.25.156.94])
 by smtp.gmail.com with ESMTPSA id
 e4sm2363441pgg.37.2020.10.23.09.50.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Oct 2020 09:50:02 -0700 (PDT)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Fri, 23 Oct 2020 09:51:01 -0700
Message-Id: <20201023165136.561680-1-robdclark@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>,
 Akhil P Oommen <akhilpo@codeaurora.org>,
 open list <linux-kernel@vger.kernel.org>, Eric Anholt <eric@anholt.net>,
 AngeloGioacchino Del Regno <kholk11@gmail.com>,
 Sam Ravnborg <sam@ravnborg.org>, Emil Velikov <emil.velikov@collabora.com>,
 Rob Clark <robdclark@chromium.org>, Jonathan Marek <jonathan@marek.ca>,
 Matthias Kaehlcke <mka@chromium.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>,
 linux-arm-msm@vger.kernel.org, Sharat Masetty <smasetty@codeaurora.org>,
 Abhinav Kumar <abhinavk@codeaurora.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 Maxime Ripard <mripard@kernel.org>, Rajendra Nayak <rnayak@codeaurora.org>,
 Harigovindan P <harigovi@codeaurora.org>,
 "Kristian H. Kristensen" <hoegsberg@google.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, Brian Masney <masneyb@onstation.org>,
 freedreno@lists.freedesktop.org
Subject: [Linaro-mm-sig] [PATCH v4 00/23] drm/msm: de-struct_mutex-ification
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
bmQgcmQvaGFuZ3JkCnY0OiBjb3VwbGUgbWlub3IgcmV2aWV3IGNvbW1lbnRzIChrcmgpLCBmaXgg
ZGVhZGxvY2sgd2l0aCBpbXBvcnRlZAogICAgZG1hLWJ1ZidzIChpZS4gZnJvbSB2NGwyLCBldGMp
CgpSb2IgQ2xhcmsgKDIzKToKICBkcm0vbXNtOiBGaXggYSBjb3VwbGUgaW5jb3JyZWN0IHVzYWdl
cyBvZiBnZXRfdmFkZHJfYWN0aXZlKCkKICBkcm0vbXNtL2dlbTogQWRkIG9iai0+bG9jayB3cmFw
cGVycwogIGRybS9tc20vZ2VtOiBSZW5hbWUgaW50ZXJuYWwgZ2V0X2lvdmFfbG9ja2VkIGhlbHBl
cgogIGRybS9tc20vZ2VtOiBNb3ZlIHByb3RvdHlwZXMgdG8gbXNtX2dlbS5oCiAgZHJtL21zbS9n
ZW06IEFkZCBzb21lIF9sb2NrZWQoKSBoZWxwZXJzCiAgZHJtL21zbS9nZW06IE1vdmUgbG9ja2lu
ZyBpbiBzaHJpbmtlciBwYXRoCiAgZHJtL21zbS9zdWJtaXQ6IE1vdmUgY29weV9mcm9tX3VzZXIg
YWhlYWQgb2YgbG9ja2luZyBib3MKICBkcm0vbXNtOiBEbyBycG0gZ2V0IHNvb25lciBpbiB0aGUg
c3VibWl0IHBhdGgKICBkcm0vbXNtL2dlbTogU3dpdGNoIG92ZXIgdG8gb2JqLT5yZXN2IGZvciBs
b2NraW5nCiAgZHJtL21zbTogVXNlIGNvcnJlY3QgZHJtX2dlbV9vYmplY3RfcHV0KCkgaW4gZmFp
bCBjYXNlCiAgZHJtL21zbTogRHJvcCBjaGF0dHkgdHJhY2UKICBkcm0vbXNtOiBNb3ZlIHVwZGF0
ZV9mZW5jZXMoKQogIGRybS9tc206IEFkZCBwcml2LT5tbV9sb2NrIHRvIHByb3RlY3QgYWN0aXZl
L2luYWN0aXZlIGxpc3RzCiAgZHJtL21zbTogRG9jdW1lbnQgYW5kIHJlbmFtZSBwcmVlbXB0X2xv
Y2sKICBkcm0vbXNtOiBQcm90ZWN0IHJpbmctPnN1Ym1pdHMgd2l0aCBpdCdzIG93biBsb2NrCiAg
ZHJtL21zbTogUmVmY291bnQgc3VibWl0cwogIGRybS9tc206IFJlbW92ZSBvYmotPmdwdQogIGRy
bS9tc206IERyb3Agc3RydWN0X211dGV4IGZyb20gdGhlIHJldGlyZSBwYXRoCiAgZHJtL21zbTog
RHJvcCBzdHJ1Y3RfbXV0ZXggaW4gZnJlZV9vYmplY3QoKSBwYXRoCiAgZHJtL21zbTogUmVtb3Zl
IG1zbV9nZW1fZnJlZV93b3JrCiAgZHJtL21zbTogRHJvcCBzdHJ1Y3RfbXV0ZXggaW4gbWFkdmlz
ZSBwYXRoCiAgZHJtL21zbTogRHJvcCBzdHJ1Y3RfbXV0ZXggaW4gc2hyaW5rZXIgcGF0aAogIGRy
bS9tc206IERvbid0IGltcGxpY2l0LXN5bmMgaWYgb25seSBhIHNpbmdsZSByaW5nCgogZHJpdmVy
cy9ncHUvZHJtL21zbS9hZHJlbm8vYTV4eF9ncHUuYyAgICAgfCAgIDYgKy0KIGRyaXZlcnMvZ3B1
L2RybS9tc20vYWRyZW5vL2E1eHhfcHJlZW1wdC5jIHwgIDEyICstCiBkcml2ZXJzL2dwdS9kcm0v
bXNtL2FkcmVuby9hNnh4X2dwdS5jICAgICB8ICAgNiArLQogZHJpdmVycy9ncHUvZHJtL21zbS9k
aXNwL21kcDQvbWRwNF9jcnRjLmMgfCAgIDEgKwogZHJpdmVycy9ncHUvZHJtL21zbS9kaXNwL21k
cDUvbWRwNV9jcnRjLmMgfCAgIDEgKwogZHJpdmVycy9ncHUvZHJtL21zbS9kc2kvZHNpX2hvc3Qu
YyAgICAgICAgfCAgIDEgKwogZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZGVidWdmcy5jICAgICAg
ICAgfCAgIDcgKwogZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZHJ2LmMgICAgICAgICAgICAgfCAg
MjEgKy0KIGRyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2Rydi5oICAgICAgICAgICAgIHwgIDczICst
LS0tLQogZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZmJkZXYuYyAgICAgICAgICAgfCAgIDEgKwog
ZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZ2VtLmMgICAgICAgICAgICAgfCAyNzEgKysrKysrKysr
KystLS0tLS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZ2VtLmggICAgICAgICAgICAg
fCAxMzMgKysrKysrKysrLS0KIGRyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2dlbV9zaHJpbmtlci5j
ICAgIHwgIDgxICsrLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2dlbV9zdWJtaXQuYyAg
ICAgIHwgMTY0ICsrKysrKysrLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2dwdS5jICAg
ICAgICAgICAgIHwgMTEwICsrKysrLS0tLQogZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZ3B1Lmgg
ICAgICAgICAgICAgfCAgIDUgKy0KIGRyaXZlcnMvZ3B1L2RybS9tc20vbXNtX3JkLmMgICAgICAg
ICAgICAgIHwgICAyICstCiBkcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9yaW5nYnVmZmVyLmMgICAg
ICB8ICAgMyArLQogZHJpdmVycy9ncHUvZHJtL21zbS9tc21fcmluZ2J1ZmZlci5oICAgICAgfCAg
MTMgKy0KIDE5IGZpbGVzIGNoYW5nZWQsIDUwNiBpbnNlcnRpb25zKCspLCA0MDUgZGVsZXRpb25z
KC0pCgotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJv
LW1tLXNpZwo=
