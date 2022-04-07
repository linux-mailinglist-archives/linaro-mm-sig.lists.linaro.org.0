Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 31BB04F7AC8
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  7 Apr 2022 11:01:23 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 68D81402AB
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  7 Apr 2022 09:01:22 +0000 (UTC)
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	by lists.linaro.org (Postfix) with ESMTPS id 924F0401EC
	for <linaro-mm-sig@lists.linaro.org>; Thu,  7 Apr 2022 09:00:07 +0000 (UTC)
Received: by mail-ej1-f53.google.com with SMTP id p15so9405462ejc.7
        for <linaro-mm-sig@lists.linaro.org>; Thu, 07 Apr 2022 02:00:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=VbFDVmTFBsd/3PPMbLnd0zhFg5hlSy27/q7PHNvEkAU=;
        b=L4OO6eb7ni5fxfWYjcoc1AJlIPg5JcpoXNN12PfSY9eA57qm2EUg5RVLIHGBK3VNbf
         RFHNi0kNwvI9iT+7c0Hb6apznk/SvQ1WsHaKj+i/wYdVG1Hr/cCgFNJHFECCiAcgaIWG
         5kXJmsWr7eM5aFIGc/eV/NlPLgi/riHhwoVbHHqZCFube8OUfza+H5hFgVG3O7CwytrA
         RgunR52+1F2wDi8pSJnOFn0PIJKgJMUxzOHFYYRZKZXjn51LrxUfkcYZjcl+4s7OFvON
         6TSv1XA0xJ9KyafbipSjeswu6Wvq1C64YEh1/5T9Ayq4BH9auU/fHwIO1+1Q2lfPFIo1
         RuVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=VbFDVmTFBsd/3PPMbLnd0zhFg5hlSy27/q7PHNvEkAU=;
        b=sXCAHApEx+0V18LMzWSNCIEGY57v/moyw0BPW6k+gKSqcXnyrbBGkmfreAtiu18hvA
         4J8vhoGxQzdTorpkWihUYPLzvnFUNPNsZKHmMVa838DyIWeTCU8U1xy8sOa+R+TBckIC
         eoyC9xGLr7mk0evSpqkKvUMFHgsCJqn6YSBbNDmwk5RM2S9EWbYzgeFUSZHxtf02ym6D
         MPbrjcnOGFGqjyHP5UmV1OFWonp57/jbMWaOZeQGsyd6ZBSLGqcD6z5GldPVpElf70SZ
         fZD39TccdC/0cA5i/jYzRcuRAOGPXYKXhLoumqxTchkq5s1UEIwUWmT/ijbV02gI3eN/
         8bYQ==
X-Gm-Message-State: AOAM531ZZ2wPxj8O9huwDo4jw44PLyxgrq3sMN5z7F7pqAsuIFftQ66R
	290JhlPVVSj4YeowrgfloBQLOBICYWs=
X-Google-Smtp-Source: ABdhPJwcwlCuBQZ5LEDFL+WbGTxNe8cavosIh6OlGUwJxIjCDdIzBgTE+UAYL0o8qUk83C1jHYYuYw==
X-Received: by 2002:a17:906:9397:b0:6e7:eb3a:ec2d with SMTP id l23-20020a170906939700b006e7eb3aec2dmr12172316ejx.257.1649322006685;
        Thu, 07 Apr 2022 02:00:06 -0700 (PDT)
Received: from able.fritz.box (p57b0b9e1.dip0.t-ipconnect.de. [87.176.185.225])
        by smtp.gmail.com with ESMTPSA id h26-20020a170906111a00b006e778bd4fc8sm5186563eja.38.2022.04.07.02.00.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Apr 2022 02:00:06 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: daniel.vetter@ffwll.ch,
	dri-devel@lists.freedesktop.org,
	linux-media@vger.kernel.org,
	linaro-mm-sig@lists.linaro.org,
	intel-gfx@lists.freedesktop.org
Date: Thu,  7 Apr 2022 10:59:46 +0200
Message-Id: <20220407085946.744568-16-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220407085946.744568-1-christian.koenig@amd.com>
References: <20220407085946.744568-1-christian.koenig@amd.com>
MIME-Version: 1.0
Message-ID-Hash: SCCUZSOBTRJ3SR2FNMVCZJXLAPZSE7RB
X-Message-ID-Hash: SCCUZSOBTRJ3SR2FNMVCZJXLAPZSE7RB
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, Will Deacon <will@kernel.org>, Waiman Long <longman@redhat.com>, Boqun Feng <boqun.feng@gmail.com>, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 15/15] seqlock: drop seqcount_ww_mutex_t
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SCCUZSOBTRJ3SR2FNMVCZJXLAPZSE7RB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RGFuaWVsIHBvaW50ZWQgb3V0IHRoYXQgdGhpcyBzZXJpZXMgcmVtb3ZlcyB0aGUgbGFzdCB1c2Vy
IG9mDQpzZXFjb3VudF93d19tdXRleF90LCBzbyBsZXQncyBkcm9wIHRoaXMuDQoNClNpZ25lZC1v
ZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCkNjOiBQ
ZXRlciBaaWpsc3RyYSA8cGV0ZXJ6QGluZnJhZGVhZC5vcmc+DQpDYzogSW5nbyBNb2xuYXIgPG1p
bmdvQHJlZGhhdC5jb20+DQpDYzogV2lsbCBEZWFjb24gPHdpbGxAa2VybmVsLm9yZz4NCkNjOiBX
YWltYW4gTG9uZyA8bG9uZ21hbkByZWRoYXQuY29tPg0KQ2M6IEJvcXVuIEZlbmcgPGJvcXVuLmZl
bmdAZ21haWwuY29tPg0KQ2M6IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmcNCi0tLQ0KIGlu
Y2x1ZGUvbGludXgvc2VxbG9jay5oIHwgOCArKy0tLS0tLQ0KIDEgZmlsZSBjaGFuZ2VkLCAyIGlu
c2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pDQoNCmRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4
L3NlcWxvY2suaCBiL2luY2x1ZGUvbGludXgvc2VxbG9jay5oDQppbmRleCAzN2RlZDZiOGZlZTYu
LjM5MjZlOTAyNzk0NyAxMDA2NDQNCi0tLSBhL2luY2x1ZGUvbGludXgvc2VxbG9jay5oDQorKysg
Yi9pbmNsdWRlL2xpbnV4L3NlcWxvY2suaA0KQEAgLTE3LDcgKzE3LDYgQEANCiAjaW5jbHVkZSA8
bGludXgva2NzYW4tY2hlY2tzLmg+DQogI2luY2x1ZGUgPGxpbnV4L2xvY2tkZXAuaD4NCiAjaW5j
bHVkZSA8bGludXgvbXV0ZXguaD4NCi0jaW5jbHVkZSA8bGludXgvd3dfbXV0ZXguaD4NCiAjaW5j
bHVkZSA8bGludXgvcHJlZW1wdC5oPg0KICNpbmNsdWRlIDxsaW51eC9zcGlubG9jay5oPg0KIA0K
QEAgLTE2NCw3ICsxNjMsNyBAQCBzdGF0aWMgaW5saW5lIHZvaWQgc2VxY291bnRfbG9ja2RlcF9y
ZWFkZXJfYWNjZXNzKGNvbnN0IHNlcWNvdW50X3QgKnMpDQogICogc3RhdGljIGluaXRpYWxpemVy
IG9yIGluaXQgZnVuY3Rpb24uIFRoaXMgZW5hYmxlcyBsb2NrZGVwIHRvIHZhbGlkYXRlDQogICog
dGhhdCB0aGUgd3JpdGUgc2lkZSBjcml0aWNhbCBzZWN0aW9uIGlzIHByb3Blcmx5IHNlcmlhbGl6
ZWQuDQogICoNCi0gKiBMT0NLTkFNRToJcmF3X3NwaW5sb2NrLCBzcGlubG9jaywgcndsb2NrLCBt
dXRleCwgb3Igd3dfbXV0ZXguDQorICogTE9DS05BTUU6CXJhd19zcGlubG9jaywgc3BpbmxvY2ss
IHJ3bG9jayBvciBtdXRleA0KICAqLw0KIA0KIC8qDQpAQCAtMTg0LDcgKzE4Myw2IEBAIHN0YXRp
YyBpbmxpbmUgdm9pZCBzZXFjb3VudF9sb2NrZGVwX3JlYWRlcl9hY2Nlc3MoY29uc3Qgc2VxY291
bnRfdCAqcykNCiAjZGVmaW5lIHNlcWNvdW50X3NwaW5sb2NrX2luaXQocywgbG9jaykJCXNlcWNv
dW50X0xPQ0tOQU1FX2luaXQocywgbG9jaywgc3BpbmxvY2spDQogI2RlZmluZSBzZXFjb3VudF9y
d2xvY2tfaW5pdChzLCBsb2NrKQkJc2VxY291bnRfTE9DS05BTUVfaW5pdChzLCBsb2NrLCByd2xv
Y2spDQogI2RlZmluZSBzZXFjb3VudF9tdXRleF9pbml0KHMsIGxvY2spCQlzZXFjb3VudF9MT0NL
TkFNRV9pbml0KHMsIGxvY2ssIG11dGV4KQ0KLSNkZWZpbmUgc2VxY291bnRfd3dfbXV0ZXhfaW5p
dChzLCBsb2NrKQkJc2VxY291bnRfTE9DS05BTUVfaW5pdChzLCBsb2NrLCB3d19tdXRleCkNCiAN
CiAvKg0KICAqIFNFUUNPVU5UX0xPQ0tOQU1FKCkJLSBJbnN0YW50aWF0ZSBzZXFjb3VudF9MT0NL
TkFNRV90IGFuZCBoZWxwZXJzDQpAQCAtMjc3LDcgKzI3NSw2IEBAIFNFUUNPVU5UX0xPQ0tOQU1F
KHJhd19zcGlubG9jaywgcmF3X3NwaW5sb2NrX3QsICBmYWxzZSwgICAgcy0+bG9jaywgICAgICAg
IHJhd19zDQogU0VRQ09VTlRfTE9DS05BTUUoc3BpbmxvY2ssICAgICBzcGlubG9ja190LCAgICAg
IF9fU0VRX1JULCBzLT5sb2NrLCAgICAgICAgc3BpbiwgICAgIHNwaW5fbG9jayhzLT5sb2NrKSkN
CiBTRVFDT1VOVF9MT0NLTkFNRShyd2xvY2ssICAgICAgIHJ3bG9ja190LCAgICAgICAgX19TRVFf
UlQsIHMtPmxvY2ssICAgICAgICByZWFkLCAgICAgcmVhZF9sb2NrKHMtPmxvY2spKQ0KIFNFUUNP
VU5UX0xPQ0tOQU1FKG11dGV4LCAgICAgICAgc3RydWN0IG11dGV4LCAgICB0cnVlLCAgICAgcy0+
bG9jaywgICAgICAgIG11dGV4LCAgICBtdXRleF9sb2NrKHMtPmxvY2spKQ0KLVNFUUNPVU5UX0xP
Q0tOQU1FKHd3X211dGV4LCAgICAgc3RydWN0IHd3X211dGV4LCB0cnVlLCAgICAgJnMtPmxvY2st
PmJhc2UsIHd3X211dGV4LCB3d19tdXRleF9sb2NrKHMtPmxvY2ssIE5VTEwpKQ0KIA0KIC8qDQog
ICogU0VRQ05UX0xPQ0tOQU1FX1pFUk8gLSBzdGF0aWMgaW5pdGlhbGl6ZXIgZm9yIHNlcWNvdW50
X0xPQ0tOQU1FX3QNCkBAIC0zMDQsOCArMzAxLDcgQEAgU0VRQ09VTlRfTE9DS05BTUUod3dfbXV0
ZXgsICAgICBzdHJ1Y3Qgd3dfbXV0ZXgsIHRydWUsICAgICAmcy0+bG9jay0+YmFzZSwgd3dfbXUN
CiAJX19zZXFwcm9wX2Nhc2UoKHMpLAlyYXdfc3BpbmxvY2ssCXByb3ApLAkJCVwNCiAJX19zZXFw
cm9wX2Nhc2UoKHMpLAlzcGlubG9jaywJcHJvcCksCQkJXA0KIAlfX3NlcXByb3BfY2FzZSgocyks
CXJ3bG9jaywJCXByb3ApLAkJCVwNCi0JX19zZXFwcm9wX2Nhc2UoKHMpLAltdXRleCwJCXByb3Ap
LAkJCVwNCi0JX19zZXFwcm9wX2Nhc2UoKHMpLAl3d19tdXRleCwJcHJvcCkpDQorCV9fc2VxcHJv
cF9jYXNlKChzKSwJbXV0ZXgsCQlwcm9wKSkNCiANCiAjZGVmaW5lIHNlcXByb3BfcHRyKHMpCQkJ
X19zZXFwcm9wKHMsIHB0cikNCiAjZGVmaW5lIHNlcXByb3Bfc2VxdWVuY2UocykJCV9fc2VxcHJv
cChzLCBzZXF1ZW5jZSkNCi0tIA0KMi4yNS4xDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFy
by1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
