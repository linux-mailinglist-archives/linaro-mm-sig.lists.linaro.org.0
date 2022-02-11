Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 28AE04B2673
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 11 Feb 2022 13:51:44 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 611BF3EEB1
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 11 Feb 2022 12:51:43 +0000 (UTC)
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	by lists.linaro.org (Postfix) with ESMTPS id 48C7D3EEAC
	for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Feb 2022 12:50:23 +0000 (UTC)
Received: by mail-ed1-f49.google.com with SMTP id co28so16386034edb.1
        for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Feb 2022 04:50:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=vb3moHUs14JxS7aa0hgcOFcr0VSSL/J8OXGJjMsgziQ=;
        b=dwxpUjkyu96B3YxNSCoGRdaR/r3+FfSg5ZBvCjFg5mDkM/xrbFf42ZZ3/EE1vXzttn
         189ri2DMtGaLW84j8Opyy+jss/PXrYHgm34PYzxs4fLegptmSPeLVOvEj+CBfD+kT7mL
         zKRAVrfSleUfr0QBdJ9EyalOqUdCUQFBw+oc3/aEICCFfyxBV3vtRVBtX6nEbNJQlsMN
         SK0eUSGXamDyuIeRuFtbM6eqLxBm25TWmzfUizap4vLT5oW+l1zvrfFWfNXBeIT73VCR
         OfEWhfttah4MQwWiYLB3F9Rcedy4LgV3AF5o0TRWnOLmk3X1KP81u38eTZucy29qbYeK
         6vKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=vb3moHUs14JxS7aa0hgcOFcr0VSSL/J8OXGJjMsgziQ=;
        b=xLWyFUIx9CGeJiIHDvrZxLlpzB0e+VYLMR+ffiNG7uKRY+MJSGboJN/tD1VatPh1Kv
         gWKDJ8bbV9PJ6pmx+IH6bKRYEJDx0+QxW1W2Jpzgdef0CE0Ffg3ZBgLRyGu4BdQvpqNl
         zqL9AEj5P67x33vcC4U/Idq8pb6BvUqtmdL225JU18z/lvWXolL6uVbmSWfyrQ5FEZlR
         az8o4SOAJ6lnVDKYKCPR0eA/PKULwVoliSo49W6emD57tEvUw3ArJO4S6klozojBLg+x
         7+uiZ0DWqxwHb1d7oJ1jLiconGfimeaz883lXzrbNmJiQ2ExMWeXM0tpbcQF2x+urguV
         ck6w==
X-Gm-Message-State: AOAM530tIqF1BT8L+Hvw5P+GXI3nSwujYz0qHWiVmkFyq3Ph8u7w5KwY
	JYxL4XVCvftRWFfZNEnjx6Y=
X-Google-Smtp-Source: ABdhPJwjeQXqViDiSdP5unjlJ+Iuk5IP2zqGsybynafobW6lmGLlqS6IntOhGMy4zqmthgaCNV8AMA==
X-Received: by 2002:a05:6402:515a:: with SMTP id n26mr1713009edd.191.1644583822382;
        Fri, 11 Feb 2022 04:50:22 -0800 (PST)
Received: from able.fritz.box (p57b0bff8.dip0.t-ipconnect.de. [87.176.191.248])
        by smtp.gmail.com with ESMTPSA id w22sm7868604ejc.137.2022.02.11.04.50.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Feb 2022 04:50:22 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: daniel@ffwll.ch,
	sumit.semwal@linaro.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Date: Fri, 11 Feb 2022 13:49:58 +0100
Message-Id: <20220211125003.918447-19-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220211125003.918447-1-christian.koenig@amd.com>
References: <20220211125003.918447-1-christian.koenig@amd.com>
MIME-Version: 1.0
Message-ID-Hash: AHPJYSXK5SRIN3YC3DTXU2NY5CPMAWWJ
X-Message-ID-Hash: AHPJYSXK5SRIN3YC3DTXU2NY5CPMAWWJ
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 18/23] drm/amdgpu: remove dma_resv workaround
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AHPJYSXK5SRIN3YC3DTXU2NY5CPMAWWJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

V2UgY2FuIG5vdyBhZGQgbXVsdGlwbGUgd3JpdGVycyB0byB0aGUgZG1hX3Jlc3Ygb2JqZWN0Lg0K
DQpBbHNvIGVuYWJsZSB0aGUgY2hlY2sgZm9yIG5vdCBhZGRpbmcgY29udGFpbmVycyBpbiBkbWFf
cmVzdi5jIGFnYWluLg0KDQpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3Rp
YW4ua29lbmlnQGFtZC5jb20+DQpDYzogYW1kLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCi0t
LQ0KIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jICAgICAgICAgICAgICAgICAgfCAgNiArLS0N
CiBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfYm9fbGlzdC5oIHwgIDEgLQ0KIGRy
aXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9jcy5jICAgICAgfCA1MSArKy0tLS0tLS0t
LS0tLS0tLS0tLS0NCiAzIGZpbGVzIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgNTAgZGVsZXRp
b25zKC0pDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYyBiL2RyaXZl
cnMvZG1hLWJ1Zi9kbWEtcmVzdi5jDQppbmRleCA4MjFlZjQ3YzNhMjQuLjk0ODQ2OTBhNDQwYSAx
MDA2NDQNCi0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jDQorKysgYi9kcml2ZXJzL2Rt
YS1idWYvZG1hLXJlc3YuYw0KQEAgLTMwOCwxMCArMzA4LDEwIEBAIHZvaWQgZG1hX3Jlc3ZfYWRk
X2ZlbmNlKHN0cnVjdCBkbWFfcmVzdiAqb2JqLCBzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwNCiAN
CiAJZG1hX3Jlc3ZfYXNzZXJ0X2hlbGQob2JqKTsNCiANCi0JLyogVE9ETzogRHJpdmVycyBzaG91
bGQgbm90IGFkZCBjb250YWluZXJzIGhlcmUsIGluc3RlYWQgYWRkIGVhY2ggZmVuY2UNCi0JICog
aW5kaXZpZHVhbGx5LiBEaXNhYmxlZCBmb3Igbm93IHVudGlsIHdlIGNsZWFuZWQgdXAgYW1kZ3B1
L3R0bS4NCisJLyogRHJpdmVycyBzaG91bGQgbm90IGFkZCBjb250YWluZXJzIGhlcmUsIGluc3Rl
YWQgYWRkIGVhY2ggZmVuY2UNCisJICogaW5kaXZpZHVhbGx5Lg0KIAkgKi8NCi0JLyogV0FSTl9P
TihkbWFfZmVuY2VfaXNfY29udGFpbmVyKGZlbmNlKSk7ICovDQorCVdBUk5fT04oZG1hX2ZlbmNl
X2lzX2NvbnRhaW5lcihmZW5jZSkpOw0KIA0KIAlmb2JqID0gZG1hX3Jlc3ZfZmVuY2VzX2xpc3Qo
b2JqKTsNCiAJY291bnQgPSBmb2JqLT5udW1fZmVuY2VzOw0KZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9ib19saXN0LmggYi9kcml2ZXJzL2dwdS9kcm0vYW1k
L2FtZGdwdS9hbWRncHVfYm9fbGlzdC5oDQppbmRleCAwNDRiNDFmMGJmZDkuLjUyOWQ1MmEyMDRj
ZiAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9ib19saXN0
LmgNCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9ib19saXN0LmgNCkBA
IC0zNCw3ICszNCw2IEBAIHN0cnVjdCBhbWRncHVfZnByaXY7DQogc3RydWN0IGFtZGdwdV9ib19s
aXN0X2VudHJ5IHsNCiAJc3RydWN0IHR0bV92YWxpZGF0ZV9idWZmZXIJdHY7DQogCXN0cnVjdCBh
bWRncHVfYm9fdmEJCSpib192YTsNCi0Jc3RydWN0IGRtYV9mZW5jZV9jaGFpbgkJKmNoYWluOw0K
IAl1aW50MzJfdAkJCXByaW9yaXR5Ow0KIAlzdHJ1Y3QgcGFnZQkJCSoqdXNlcl9wYWdlczsNCiAJ
Ym9vbAkJCQl1c2VyX2ludmFsaWRhdGVkOw0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9h
bWQvYW1kZ3B1L2FtZGdwdV9jcy5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1
X2NzLmMNCmluZGV4IGMyMWFlNjY5NGRmNy4uNTIyN2MyZjRmZWFkIDEwMDY0NA0KLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2NzLmMNCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9hbWQvYW1kZ3B1L2FtZGdwdV9jcy5jDQpAQCAtNTc1LDE0ICs1NzUsNiBAQCBzdGF0aWMgaW50
IGFtZGdwdV9jc19wYXJzZXJfYm9zKHN0cnVjdCBhbWRncHVfY3NfcGFyc2VyICpwLA0KIAkJc3Ry
dWN0IGFtZGdwdV9ibyAqYm8gPSB0dG1fdG9fYW1kZ3B1X2JvKGUtPnR2LmJvKTsNCiANCiAJCWUt
PmJvX3ZhID0gYW1kZ3B1X3ZtX2JvX2ZpbmQodm0sIGJvKTsNCi0NCi0JCWlmIChiby0+dGJvLmJh
c2UuZG1hX2J1ZiAmJiAhYW1kZ3B1X2JvX2V4cGxpY2l0X3N5bmMoYm8pKSB7DQotCQkJZS0+Y2hh
aW4gPSBkbWFfZmVuY2VfY2hhaW5fYWxsb2MoKTsNCi0JCQlpZiAoIWUtPmNoYWluKSB7DQotCQkJ
CXIgPSAtRU5PTUVNOw0KLQkJCQlnb3RvIGVycm9yX3ZhbGlkYXRlOw0KLQkJCX0NCi0JCX0NCiAJ
fQ0KIA0KIAlhbWRncHVfY3NfZ2V0X3RocmVzaG9sZF9mb3JfbW92ZXMocC0+YWRldiwgJnAtPmJ5
dGVzX21vdmVkX3RocmVzaG9sZCwNCkBAIC02MzMsMTMgKzYyNSw4IEBAIHN0YXRpYyBpbnQgYW1k
Z3B1X2NzX3BhcnNlcl9ib3Moc3RydWN0IGFtZGdwdV9jc19wYXJzZXIgKnAsDQogCX0NCiANCiBl
cnJvcl92YWxpZGF0ZToNCi0JaWYgKHIpIHsNCi0JCWFtZGdwdV9ib19saXN0X2Zvcl9lYWNoX2Vu
dHJ5KGUsIHAtPmJvX2xpc3QpIHsNCi0JCQlkbWFfZmVuY2VfY2hhaW5fZnJlZShlLT5jaGFpbik7
DQotCQkJZS0+Y2hhaW4gPSBOVUxMOw0KLQkJfQ0KKwlpZiAocikNCiAJCXR0bV9ldV9iYWNrb2Zm
X3Jlc2VydmF0aW9uKCZwLT50aWNrZXQsICZwLT52YWxpZGF0ZWQpOw0KLQl9DQogb3V0Og0KIAly
ZXR1cm4gcjsNCiB9DQpAQCAtNjc5LDE3ICs2NjYsOSBAQCBzdGF0aWMgdm9pZCBhbWRncHVfY3Nf
cGFyc2VyX2Zpbmkoc3RydWN0IGFtZGdwdV9jc19wYXJzZXIgKnBhcnNlciwgaW50IGVycm9yLA0K
IHsNCiAJdW5zaWduZWQgaTsNCiANCi0JaWYgKGVycm9yICYmIGJhY2tvZmYpIHsNCi0JCXN0cnVj
dCBhbWRncHVfYm9fbGlzdF9lbnRyeSAqZTsNCi0NCi0JCWFtZGdwdV9ib19saXN0X2Zvcl9lYWNo
X2VudHJ5KGUsIHBhcnNlci0+Ym9fbGlzdCkgew0KLQkJCWRtYV9mZW5jZV9jaGFpbl9mcmVlKGUt
PmNoYWluKTsNCi0JCQllLT5jaGFpbiA9IE5VTEw7DQotCQl9DQotDQorCWlmIChlcnJvciAmJiBi
YWNrb2ZmKQ0KIAkJdHRtX2V1X2JhY2tvZmZfcmVzZXJ2YXRpb24oJnBhcnNlci0+dGlja2V0LA0K
IAkJCQkJICAgJnBhcnNlci0+dmFsaWRhdGVkKTsNCi0JfQ0KIA0KIAlmb3IgKGkgPSAwOyBpIDwg
cGFyc2VyLT5udW1fcG9zdF9kZXBzOyBpKyspIHsNCiAJCWRybV9zeW5jb2JqX3B1dChwYXJzZXIt
PnBvc3RfZGVwc1tpXS5zeW5jb2JqKTsNCkBAIC0xMjY0LDI5ICsxMjQzLDkgQEAgc3RhdGljIGlu
dCBhbWRncHVfY3Nfc3VibWl0KHN0cnVjdCBhbWRncHVfY3NfcGFyc2VyICpwLA0KIA0KIAlhbWRn
cHVfdm1fbW92ZV90b19scnVfdGFpbChwLT5hZGV2LCAmZnByaXYtPnZtKTsNCiANCi0JYW1kZ3B1
X2JvX2xpc3RfZm9yX2VhY2hfZW50cnkoZSwgcC0+Ym9fbGlzdCkgew0KLQkJc3RydWN0IGRtYV9y
ZXN2ICpyZXN2ID0gZS0+dHYuYm8tPmJhc2UucmVzdjsNCi0JCXN0cnVjdCBkbWFfZmVuY2VfY2hh
aW4gKmNoYWluID0gZS0+Y2hhaW47DQotCQlzdHJ1Y3QgZG1hX3Jlc3ZfaXRlciBjdXJzb3I7DQot
CQlzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZTsNCi0NCi0JCWlmICghY2hhaW4pDQotCQkJY29udGlu
dWU7DQotDQotCQkvKg0KLQkJICogV29yayBhcm91bmQgZG1hX3Jlc3Ygc2hvcnRjb21taW5ncyBi
eSB3cmFwcGluZyB1cCB0aGUNCi0JCSAqIHN1Ym1pc3Npb24gaW4gYSBkbWFfZmVuY2VfY2hhaW4g
YW5kIGFkZCBpdCBhcyBleGNsdXNpdmUNCi0JCSAqIGZlbmNlLg0KLQkJICovDQotCQlkbWFfcmVz
dl9mb3JfZWFjaF9mZW5jZSgmY3Vyc29yLCByZXN2LA0KLQkJCQkJRE1BX1JFU1ZfVVNBR0VfV1JJ
VEUsDQotCQkJCQlmZW5jZSkgew0KLQkJCWJyZWFrOw0KLQkJfQ0KLQkJZG1hX2ZlbmNlX2NoYWlu
X2luaXQoY2hhaW4sIGZlbmNlLCBkbWFfZmVuY2VfZ2V0KHAtPmZlbmNlKSwgMSk7DQotCQlkbWFf
cmVzdl9hZGRfZmVuY2UocmVzdiwgJmNoYWluLT5iYXNlLCBETUFfUkVTVl9VU0FHRV9XUklURSk7
DQotCQllLT5jaGFpbiA9IE5VTEw7DQotCX0NCisJLyogTWFrZSBzdXJlIGFsbCBCT3MgYXJlIHJl
bWVtYmVyZWQgYXMgd3JpdGVycyAqLw0KKwlhbWRncHVfYm9fbGlzdF9mb3JfZWFjaF9lbnRyeShl
LCBwLT5ib19saXN0KQ0KKwkJZS0+dHYubnVtX3NoYXJlZCA9IDA7DQogDQogCXR0bV9ldV9mZW5j
ZV9idWZmZXJfb2JqZWN0cygmcC0+dGlja2V0LCAmcC0+dmFsaWRhdGVkLCBwLT5mZW5jZSk7DQog
CW11dGV4X3VubG9jaygmcC0+YWRldi0+bm90aWZpZXJfbG9jayk7DQotLSANCjIuMjUuMQ0KDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFy
by5vcmcK
