Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 03C204979B6
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 24 Jan 2022 08:41:53 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 38BB2401C8
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 24 Jan 2022 07:41:52 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	by lists.linaro.org (Postfix) with ESMTPS id 3D6C23EE80
	for <linaro-mm-sig@lists.linaro.org>; Mon, 24 Jan 2022 07:40:51 +0000 (UTC)
Received: by mail-wr1-f46.google.com with SMTP id v13so11812883wrv.10
        for <linaro-mm-sig@lists.linaro.org>; Sun, 23 Jan 2022 23:40:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=NMvNPKP34hAKYGcpxJqq3LnQ/oLcKhJxLzf1TGkhp7o=;
        b=bAyiVbeL0O/tXrVEJoufHk2hMCElT7PNsdTJZ4q1rRynh+wz81LxDxU2r01Iym6VVt
         sVaIcM92UfKeJDnXO1Rf5z9TcBW/Vk/SwAaEpaYkTSaEuuaHCorczWFU5dpVe3QpJvHm
         8zXVgegBY1i23LrTU+T4IeYqBE9fHWevOENAlblziqtjiZuR1bpy76Pc17hS0zZtwRLX
         AWzZKJgOMcDr5lf946FqoFkO8RrLddgwIys8pL6IrbBIZoxCcQ3fSJgYZZIONsCYPamM
         2H9wdS06v75M6zo3keQG/CY/o3fMpE9zYPSubQjmQ9a0Mft+ASlJAz5l0KsEYKE/D5pS
         G/bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=NMvNPKP34hAKYGcpxJqq3LnQ/oLcKhJxLzf1TGkhp7o=;
        b=JQyi3L4xXcL966klSoGvmisPnS7vcCZcgERN10C0zbl7+NBZf53yYzhKayCD7hCB6M
         rzVoWoWFndBPFmWZSqH654qPxsAub/1KpHqo8bOnQT6Mgzj/5lOMS+y/K8IIYMzd2OdB
         pnSI+CqGcueQ1fupUY9qTm1eXqzxLNaKfYowYP7ZCZDOqnbBI0LDnxBeMG+DCtNu8wQV
         Z6NUWxiLZukXRoW1mNnYt8kcJJTQH+zTMRzc0sNd7D8Oxpws8d8ZbE/5fWOMJG5cdBtI
         8eaUhP2lEq5xxYmeD1P6pTx5zJngyv5fNr//fr+SY1Z4VuODxCkDZYfQ20c044+kUuPc
         zcfA==
X-Gm-Message-State: AOAM533lSdrvj3H6xKRQ9oL7rFMJv3IMxIFWR9SnOjXOhdi87sCKPKIz
	MdV5Tkt0QpJeZOZMhyDh5Qc=
X-Google-Smtp-Source: ABdhPJy6f2RHhcqqgDM9WwFjE7EjUM8xU24oiTj68CEJVDxm+pU6cyKrOR36zVZu7Z9+3QZY9dF4Dg==
X-Received: by 2002:a05:6000:18a1:: with SMTP id b1mr5366493wri.608.1643010050406;
        Sun, 23 Jan 2022 23:40:50 -0800 (PST)
Received: from abel.fritz.box (p57b0bff8.dip0.t-ipconnect.de. [87.176.191.248])
        by smtp.gmail.com with ESMTPSA id u15sm516370wrs.17.2022.01.23.23.40.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Jan 2022 23:40:50 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: thomas.hellstrom@linux.intel.com,
	sumit.semwal@linaro.org,
	gustavo@padovan.org,
	daniel.vetter@ffwll.ch,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Date: Mon, 24 Jan 2022 08:40:41 +0100
Message-Id: <20220124074046.4865-4-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220124074046.4865-1-christian.koenig@amd.com>
References: <20220124074046.4865-1-christian.koenig@amd.com>
MIME-Version: 1.0
Message-ID-Hash: MIXQIJVJNZY5YY742RQKJBTKLO3BFLNC
X-Message-ID-Hash: MIXQIJVJNZY5YY742RQKJBTKLO3BFLNC
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 4/9] dma-buf: warn about containers in dma_resv object
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MIXQIJVJNZY5YY742RQKJBTKLO3BFLNC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RHJpdmVycyBzaG91bGQgbm90IGFkZCBjb250YWluZXJzIGFzIHNoYXJlZCBmZW5jZXMgdG8gdGhl
IGRtYV9yZXN2DQpvYmplY3QsIGluc3RlYWQgZWFjaCBmZW5jZSBzaG91bGQgYmUgYWRkZWQgaW5k
aXZpZHVhbGx5Lg0KDQpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4u
a29lbmlnQGFtZC5jb20+DQpSZXZpZXdlZC1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRl
ckBmZndsbC5jaD4NCi0tLQ0KIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jIHwgNSArKysrKw0K
IDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMv
ZG1hLWJ1Zi9kbWEtcmVzdi5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMNCmluZGV4IDZk
ZDlhNDBiNTVkNC4uZThhMGMxZDUxZGEyIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9kbWEtYnVmL2Rt
YS1yZXN2LmMNCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jDQpAQCAtMjU2LDYgKzI1
NiwxMSBAQCB2b2lkIGRtYV9yZXN2X2FkZF9zaGFyZWRfZmVuY2Uoc3RydWN0IGRtYV9yZXN2ICpv
YmosIHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKQ0KIA0KIAlkbWFfcmVzdl9hc3NlcnRfaGVsZChv
YmopOw0KIA0KKwkvKiBEcml2ZXJzIHNob3VsZCBub3QgYWRkIGNvbnRhaW5lcnMgaGVyZSwgaW5z
dGVhZCBhZGQgZWFjaCBmZW5jZQ0KKwkgKiBpbmRpdmlkdWFsbHkuDQorCSAqLw0KKwlXQVJOX09O
KGRtYV9mZW5jZV9pc19jb250YWluZXIoZmVuY2UpKTsNCisNCiAJZm9iaiA9IGRtYV9yZXN2X3No
YXJlZF9saXN0KG9iaik7DQogCWNvdW50ID0gZm9iai0+c2hhcmVkX2NvdW50Ow0KIA0KLS0gDQoy
LjI1LjENCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8u
b3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBs
aXN0cy5saW5hcm8ub3JnCg==
