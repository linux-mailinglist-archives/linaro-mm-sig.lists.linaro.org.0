Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B9C154B2672
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 11 Feb 2022 13:51:38 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EC6093EECF
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 11 Feb 2022 12:51:37 +0000 (UTC)
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	by lists.linaro.org (Postfix) with ESMTPS id 356833EEB6
	for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Feb 2022 12:50:20 +0000 (UTC)
Received: by mail-ej1-f42.google.com with SMTP id fy20so22562579ejc.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Feb 2022 04:50:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=/8feDZVFHPKC3pY8v1GnW/3pzS/fVxuaXiSADYQ0yfQ=;
        b=DW+1YT0uilfzh6wmfT8IKyo2JwtKHLAeTnP+ASk1G5/6HqK/ozIdBn9oW2uJ8+DDpk
         J5fYEgPTp3ApB2oSpxk4Neof5S5Clr/wpUVnDAjLuIL2ZXGqjDK3WdQ8bFsnSJBNmwzf
         Y9PbGQjCBbp9ud2uUEQvYalY3Xrn6uEE6UDhPdzvmbDw0EZJuQaEq+i0pGE+xX6IQppt
         zoyaWwRVRYK2FphqGW/DvhVXPJi79f2VYYhiUgmxipUo2eDDpWtZPTT3bP8wjdF5wHzz
         5YOIvQ6eFgKzB/CN5JikDFx5agA4BS1VEt88D0ysOfx9ZBP2Fa2+4MztoR49vSVWKT4T
         /yoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/8feDZVFHPKC3pY8v1GnW/3pzS/fVxuaXiSADYQ0yfQ=;
        b=nlcyXrT3aqJlYu8NFfZPe4r06Ce2qWpNycaC8nLMXmZaYYz2/DRn/OrYq32LoFNqqp
         +5RHnLOc6V6B22JrZY5Sox5x4pMoRJrEPscAUL7udZhEgp+DQncRSae7fGa0lAfMsawe
         ggcYoEe9fxGloB7q7PZKZFVJ1Z2yAeuacT2r60ByfzPyEXMgGIGg6pa50hSky4iHnotJ
         DmCnEbY4nY25Eh/POxeY2yN4o7a5Pt08LUGJRW/r0+r/3gvVTrlzyq1MfUX+OvhK4X+H
         JR8gpvu/I7VeIt29IFwgOJ6tkA5+lVle13XKPVKwnISfHh5rpQ/i2oDucfJKcI+j4LyI
         BdvQ==
X-Gm-Message-State: AOAM532BiUwJK3fG4bm0WuC+jd/9FLUqRaEYKRH+Ca4uK+YNNYT0f59+
	6XHV0bo4t2KqSf1rRgQzmZw=
X-Google-Smtp-Source: ABdhPJxvWHSKjx7krkrML/k54QIPgudSP7kpI2fiokJUVV1lWTDKNLz9pAe3JtRrrsQENnxEfjN17w==
X-Received: by 2002:a17:907:1c01:: with SMTP id nc1mr1283166ejc.659.1644583819305;
        Fri, 11 Feb 2022 04:50:19 -0800 (PST)
Received: from able.fritz.box (p57b0bff8.dip0.t-ipconnect.de. [87.176.191.248])
        by smtp.gmail.com with ESMTPSA id w22sm7868604ejc.137.2022.02.11.04.50.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Feb 2022 04:50:18 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: daniel@ffwll.ch,
	sumit.semwal@linaro.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Date: Fri, 11 Feb 2022 13:49:55 +0100
Message-Id: <20220211125003.918447-16-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220211125003.918447-1-christian.koenig@amd.com>
References: <20220211125003.918447-1-christian.koenig@amd.com>
MIME-Version: 1.0
Message-ID-Hash: ILFBER7BVVA2UVXRJ74XAHFA4QC22L6I
X-Message-ID-Hash: ILFBER7BVVA2UVXRJ74XAHFA4QC22L6I
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 15/23] drm/amdgpu: use dma_resv_get_singleton in amdgpu_pasid_free_cb
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ILFBER7BVVA2UVXRJ74XAHFA4QC22L6I/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TWFrZXMgdGhlIGNvZGUgYSBiaXQgbW9yZSBzaW1wbGVyLg0KDQpTaWduZWQtb2ZmLWJ5OiBDaHJp
c3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQpSZXZpZXdlZC1ieTogRGFu
aWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4NCkNjOiBhbWQtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZw0KLS0tDQogZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2lk
cy5jIHwgMjMgKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0NCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNl
cnRpb25zKCspLCAyMCBkZWxldGlvbnMoLSkNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9hbWQvYW1kZ3B1L2FtZGdwdV9pZHMuYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2Ft
ZGdwdV9pZHMuYw0KaW5kZXggYmU0ODQ4N2UyY2E3Li44ODhkOTcxNDMxNzcgMTAwNjQ0DQotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfaWRzLmMNCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9pZHMuYw0KQEAgLTEwNywzNiArMTA3LDE5IEBAIHN0
YXRpYyB2b2lkIGFtZGdwdV9wYXNpZF9mcmVlX2NiKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLA0K
IHZvaWQgYW1kZ3B1X3Bhc2lkX2ZyZWVfZGVsYXllZChzdHJ1Y3QgZG1hX3Jlc3YgKnJlc3YsDQog
CQkJICAgICAgIHUzMiBwYXNpZCkNCiB7DQotCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLCAqKmZl
bmNlczsNCiAJc3RydWN0IGFtZGdwdV9wYXNpZF9jYiAqY2I7DQotCXVuc2lnbmVkIGNvdW50Ow0K
KwlzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZTsNCiAJaW50IHI7DQogDQotCXIgPSBkbWFfcmVzdl9n
ZXRfZmVuY2VzKHJlc3YsIHRydWUsICZjb3VudCwgJmZlbmNlcyk7DQorCXIgPSBkbWFfcmVzdl9n
ZXRfc2luZ2xldG9uKHJlc3YsIHRydWUsICZmZW5jZSk7DQogCWlmIChyKQ0KIAkJZ290byBmYWxs
YmFjazsNCiANCi0JaWYgKGNvdW50ID09IDApIHsNCisJaWYgKCFmZW5jZSkgew0KIAkJYW1kZ3B1
X3Bhc2lkX2ZyZWUocGFzaWQpOw0KIAkJcmV0dXJuOw0KIAl9DQogDQotCWlmIChjb3VudCA9PSAx
KSB7DQotCQlmZW5jZSA9IGZlbmNlc1swXTsNCi0JCWtmcmVlKGZlbmNlcyk7DQotCX0gZWxzZSB7
DQotCQl1aW50NjRfdCBjb250ZXh0ID0gZG1hX2ZlbmNlX2NvbnRleHRfYWxsb2MoMSk7DQotCQlz
dHJ1Y3QgZG1hX2ZlbmNlX2FycmF5ICphcnJheTsNCi0NCi0JCWFycmF5ID0gZG1hX2ZlbmNlX2Fy
cmF5X2NyZWF0ZShjb3VudCwgZmVuY2VzLCBjb250ZXh0LA0KLQkJCQkJICAgICAgIDEsIGZhbHNl
KTsNCi0JCWlmICghYXJyYXkpIHsNCi0JCQlrZnJlZShmZW5jZXMpOw0KLQkJCWdvdG8gZmFsbGJh
Y2s7DQotCQl9DQotCQlmZW5jZSA9ICZhcnJheS0+YmFzZTsNCi0JfQ0KLQ0KIAljYiA9IGttYWxs
b2Moc2l6ZW9mKCpjYiksIEdGUF9LRVJORUwpOw0KIAlpZiAoIWNiKSB7DQogCQkvKiBMYXN0IHJl
c29ydCB3aGVuIHdlIGFyZSBPT00gKi8NCi0tIA0KMi4yNS4xDQoNCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
