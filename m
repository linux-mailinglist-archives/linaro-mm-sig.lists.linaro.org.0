Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 615874B264E
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 11 Feb 2022 13:50:45 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 934CD401D6
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 11 Feb 2022 12:50:44 +0000 (UTC)
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	by lists.linaro.org (Postfix) with ESMTPS id 6D5413EEAC
	for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Feb 2022 12:50:12 +0000 (UTC)
Received: by mail-ej1-f45.google.com with SMTP id j14so22692020ejy.6
        for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Feb 2022 04:50:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=Kxslsyj+YVWR4fxH+NR1YM+/iQHS982bc+OURLvUclc=;
        b=WAHQPCvQwzxZfhQyUJ3kgG9ELRpqd1OixxsZ+UETNZ1oZii9WeVJGwxoxN+9EMHLEC
         laKx34f3CTLZ1iBEUpzOzmVUdndWc1OtcOwSvhAGyEPD+ZsNx1cLT4sAAiGrQwsskI9F
         LPrP+K+24xGiY6eoDWFutL4RsYYwZrW4wpuG3WPJrA5w8hJBd4F1KsNqB+AAFg0MTLDh
         dgkfkSPPAkboukLyLrF452V74pwKCyVbEqnXWYTGATuGw/3Gs3nWCcwalEWAjWQlb2Gn
         x2ehAUOOWkSRksxTdeY5LtMi8IiCI3xNCXrz1DRzd5IJ0luL9RXROQ1LQC6Jg3X1GjOX
         Fk9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Kxslsyj+YVWR4fxH+NR1YM+/iQHS982bc+OURLvUclc=;
        b=j7A322E3QeKmCX5zx+fy6n1poHL6bB1VxOn84AhnfwgeOyCuevIPrfwPYOghCNGa7i
         EvcvS37z+VG0RlT2+SloNBPrUy/CLV7KvxKqpiWjfNm4RnuNsYyqCH1ZzwhdB6cFB3/l
         8Z0dekjvO1kq3n6qPeODVHWZ5uU07hUzJP3RvFXuL/25ZnP+uBKPiNPBMXbcQHcZywpH
         NFfmmOosDH/Dlbj/Wilm//JY+ISrSIOApnUEO2qXDfdGW8tTa3wgcGKbbL0WBlSe941/
         6n4LMU2mXIUQiZNFa0wcxCvGMi6ZaLwysXJFJLvAH9X89JZjb89JuZrka6SuGGOvcVkP
         vXcg==
X-Gm-Message-State: AOAM530ahWiik7yIcPqcrgjxVamUziKzMSEx9zOnpXP6n33ih2cp3b/j
	VqgT8HZ0RbHRaqqbwYabngE=
X-Google-Smtp-Source: ABdhPJxHwiPYW3/6mmo1D9V8gkWE0qvnvJnxJBR26j+QlRWOlhMzX7dfEj9uguD8Zoiova3kdd4xtQ==
X-Received: by 2002:a17:906:58c7:: with SMTP id e7mr1164975ejs.743.1644583811522;
        Fri, 11 Feb 2022 04:50:11 -0800 (PST)
Received: from able.fritz.box (p57b0bff8.dip0.t-ipconnect.de. [87.176.191.248])
        by smtp.gmail.com with ESMTPSA id w22sm7868604ejc.137.2022.02.11.04.50.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Feb 2022 04:50:11 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: daniel@ffwll.ch,
	sumit.semwal@linaro.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Date: Fri, 11 Feb 2022 13:49:45 +0100
Message-Id: <20220211125003.918447-6-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220211125003.918447-1-christian.koenig@amd.com>
References: <20220211125003.918447-1-christian.koenig@amd.com>
MIME-Version: 1.0
Message-ID-Hash: ITDYHIBQKLXF4NM2QUNUYFTZG473H45N
X-Message-ID-Hash: ITDYHIBQKLXF4NM2QUNUYFTZG473H45N
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 05/23] drm/etnaviv: stop using dma_resv_excl_fence
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ITDYHIBQKLXF4NM2QUNUYFTZG473H45N/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

V2UgY2FuIGdldCB0aGUgZXhjbCBmZW5jZSB0b2dldGhlciB3aXRoIHRoZSBzaGFyZWQgb25lcyBh
cyB3ZWxsLg0KDQpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29l
bmlnQGFtZC5jb20+DQpSZXZpZXdlZC1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBm
ZndsbC5jaD4NCkNjOiBMdWNhcyBTdGFjaCA8bC5zdGFjaEBwZW5ndXRyb25peC5kZT4NCkNjOiBS
dXNzZWxsIEtpbmcgPGxpbnV4K2V0bmF2aXZAYXJtbGludXgub3JnLnVrPg0KQ2M6IENocmlzdGlh
biBHbWVpbmVyIDxjaHJpc3RpYW4uZ21laW5lckBnbWFpbC5jb20+DQpDYzogZXRuYXZpdkBsaXN0
cy5mcmVlZGVza3RvcC5vcmcNCi0tLQ0KIGRyaXZlcnMvZ3B1L2RybS9ldG5hdml2L2V0bmF2aXZf
Z2VtLmggICAgICAgIHwgIDEgLQ0KIGRyaXZlcnMvZ3B1L2RybS9ldG5hdml2L2V0bmF2aXZfZ2Vt
X3N1Ym1pdC5jIHwgMTQgKysrKystLS0tLS0tLS0NCiBkcml2ZXJzL2dwdS9kcm0vZXRuYXZpdi9l
dG5hdml2X3NjaGVkLmMgICAgICB8IDEwIC0tLS0tLS0tLS0NCiAzIGZpbGVzIGNoYW5nZWQsIDUg
aW5zZXJ0aW9ucygrKSwgMjAgZGVsZXRpb25zKC0pDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vZXRuYXZpdi9ldG5hdml2X2dlbS5oIGIvZHJpdmVycy9ncHUvZHJtL2V0bmF2aXYvZXRu
YXZpdl9nZW0uaA0KaW5kZXggOThlNjBkZjg4MmI2Li5mNTk2ZDc0M2JhYTMgMTAwNjQ0DQotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vZXRuYXZpdi9ldG5hdml2X2dlbS5oDQorKysgYi9kcml2ZXJzL2dw
dS9kcm0vZXRuYXZpdi9ldG5hdml2X2dlbS5oDQpAQCAtODAsNyArODAsNiBAQCBzdHJ1Y3QgZXRu
YXZpdl9nZW1fc3VibWl0X2JvIHsNCiAJdTY0IHZhOw0KIAlzdHJ1Y3QgZXRuYXZpdl9nZW1fb2Jq
ZWN0ICpvYmo7DQogCXN0cnVjdCBldG5hdml2X3ZyYW1fbWFwcGluZyAqbWFwcGluZzsNCi0Jc3Ry
dWN0IGRtYV9mZW5jZSAqZXhjbDsNCiAJdW5zaWduZWQgaW50IG5yX3NoYXJlZDsNCiAJc3RydWN0
IGRtYV9mZW5jZSAqKnNoYXJlZDsNCiB9Ow0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9l
dG5hdml2L2V0bmF2aXZfZ2VtX3N1Ym1pdC5jIGIvZHJpdmVycy9ncHUvZHJtL2V0bmF2aXYvZXRu
YXZpdl9nZW1fc3VibWl0LmMNCmluZGV4IDRlYjAwYTBjYjY1MC4uMzg1ZWExNDFjMjNlIDEwMDY0
NA0KLS0tIGEvZHJpdmVycy9ncHUvZHJtL2V0bmF2aXYvZXRuYXZpdl9nZW1fc3VibWl0LmMNCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9ldG5hdml2L2V0bmF2aXZfZ2VtX3N1Ym1pdC5jDQpAQCAtMTg4
LDE1ICsxODgsMTEgQEAgc3RhdGljIGludCBzdWJtaXRfZmVuY2Vfc3luYyhzdHJ1Y3QgZXRuYXZp
dl9nZW1fc3VibWl0ICpzdWJtaXQpDQogCQlpZiAoc3VibWl0LT5mbGFncyAmIEVUTkFfU1VCTUlU
X05PX0lNUExJQ0lUKQ0KIAkJCWNvbnRpbnVlOw0KIA0KLQkJaWYgKGJvLT5mbGFncyAmIEVUTkFf
U1VCTUlUX0JPX1dSSVRFKSB7DQotCQkJcmV0ID0gZG1hX3Jlc3ZfZ2V0X2ZlbmNlcyhyb2JqLCB0
cnVlLCAmYm8tPm5yX3NoYXJlZCwNCi0JCQkJCQkgICZiby0+c2hhcmVkKTsNCi0JCQlpZiAocmV0
KQ0KLQkJCQlyZXR1cm4gcmV0Ow0KLQkJfSBlbHNlIHsNCi0JCQliby0+ZXhjbCA9IGRtYV9mZW5j
ZV9nZXQoZG1hX3Jlc3ZfZXhjbF9mZW5jZShyb2JqKSk7DQotCQl9DQotDQorCQlyZXQgPSBkbWFf
cmVzdl9nZXRfZmVuY2VzKHJvYmosDQorCQkJCQkgIGJvLT5mbGFncyAmIEVUTkFfU1VCTUlUX0JP
X1dSSVRFLA0KKwkJCQkJICAmYm8tPm5yX3NoYXJlZCwgJmJvLT5zaGFyZWQpOw0KKwkJaWYgKHJl
dCkNCisJCQlyZXR1cm4gcmV0Ow0KIAl9DQogDQogCXJldHVybiByZXQ7DQpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2V0bmF2aXYvZXRuYXZpdl9zY2hlZC5jIGIvZHJpdmVycy9ncHUvZHJt
L2V0bmF2aXYvZXRuYXZpdl9zY2hlZC5jDQppbmRleCA1OGY1OTNiMjc4YzEuLjIxZDE3NzdkNWJm
MiAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9ldG5hdml2L2V0bmF2aXZfc2NoZWQuYw0K
KysrIGIvZHJpdmVycy9ncHUvZHJtL2V0bmF2aXYvZXRuYXZpdl9zY2hlZC5jDQpAQCAtMzksMTYg
KzM5LDYgQEAgZXRuYXZpdl9zY2hlZF9kZXBlbmRlbmN5KHN0cnVjdCBkcm1fc2NoZWRfam9iICpz
Y2hlZF9qb2IsDQogCQlzdHJ1Y3QgZXRuYXZpdl9nZW1fc3VibWl0X2JvICpibyA9ICZzdWJtaXQt
PmJvc1tpXTsNCiAJCWludCBqOw0KIA0KLQkJaWYgKGJvLT5leGNsKSB7DQotCQkJZmVuY2UgPSBi
by0+ZXhjbDsNCi0JCQliby0+ZXhjbCA9IE5VTEw7DQotDQotCQkJaWYgKCFkbWFfZmVuY2VfaXNf
c2lnbmFsZWQoZmVuY2UpKQ0KLQkJCQlyZXR1cm4gZmVuY2U7DQotDQotCQkJZG1hX2ZlbmNlX3B1
dChmZW5jZSk7DQotCQl9DQotDQogCQlmb3IgKGogPSAwOyBqIDwgYm8tPm5yX3NoYXJlZDsgaisr
KSB7DQogCQkJaWYgKCFiby0+c2hhcmVkW2pdKQ0KIAkJCQljb250aW51ZTsNCi0tIA0KMi4yNS4x
DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMu
bGluYXJvLm9yZwo=
