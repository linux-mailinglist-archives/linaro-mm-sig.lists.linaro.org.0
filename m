Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C4FD854F3B6
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Jun 2022 10:57:26 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9092247CC7
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Jun 2022 08:57:25 +0000 (UTC)
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	by lists.linaro.org (Postfix) with ESMTPS id 39F3F3EC1D
	for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Jun 2022 08:57:20 +0000 (UTC)
Received: by mail-ed1-f53.google.com with SMTP id eo8so5354949edb.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Jun 2022 01:57:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=9FbtKPklDAzYqBxI9midbYskvWSeku8VgHM4QUv4J+g=;
        b=RIKHRpM0wUlv8lDPilrhaOhSpY747adTj7jmL+FXxXSdcmIjxhX0Lkw1pm+H4jCe6Y
         ml/nDp0R8WSzIO6Y4+TMTO5T+EgaW0Fv65fbBlvLBQg7AKwVHrPEL5DnYmCVnK1Gz6CE
         ahp0XJk1jYPqPxK/YnubRBwE3gDKZOrd9NCQjYVA17cJqqI2isHsGzRSlO1OKg9m3EF7
         O9vntabP/uW+nTYRnpc4lSoNe2QEGelbtCCRpXBOeQqC5xRl195yUEgU4gVtA5roGtjC
         nlOXbhZgLE4nRdhbQgP0LfrWe+MSYg+hvmj5oZg7JYMMtRzpjHmzqAscNrQ/uewV496K
         GvRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=9FbtKPklDAzYqBxI9midbYskvWSeku8VgHM4QUv4J+g=;
        b=1DCbZh4Eo7OcjCW4XGusi99CuzCXxHL9yh0kKPJxkoQaBzALVdj7sT+c8WjMA/acHd
         P8fLPumXLo7WV2D+1Zx1sdeXY+7iEoGP5RyRBbwWU/plBAY3IVIqj0uG7YQp45HItfl7
         XIiHMt6+Erb0+qlJVSyjp4nZrn+XQtvEHC6IbndGADScmPq5BnOq2pHDCts/iiJmpWRz
         sMMUqbE5VRUaifTIJibQDfqqm/X0HsxE0eoeSvaYkQomUt7RZzIwZi14R2Zfa1MiIkd1
         I2isqJuQE//IoBkiJJqeFYnnRVy8aH5Gou4vYEl8Oiejp63RkW+cOgEZ+XMVsKO+X9ng
         94Dg==
X-Gm-Message-State: AJIora/U9udHcVF16wzq5sJNB7vQjoUQWyWFeeIoMO1HPH5tTakgXM9F
	1Rjn5ZM2KYXc7VbpyRG0RQs=
X-Google-Smtp-Source: AGRyM1uLOxptLIvHstxzriWtY/q4UBxlt3fidCgVPZqCtQXF7jzPX8mLudscCl/W3SvwTk6vu2FBBQ==
X-Received: by 2002:a50:d097:0:b0:42d:d158:4e61 with SMTP id v23-20020a50d097000000b0042dd1584e61mr11144467edd.42.1655456239177;
        Fri, 17 Jun 2022 01:57:19 -0700 (PDT)
Received: from able.fritz.box (p57b0bd9f.dip0.t-ipconnect.de. [87.176.189.159])
        by smtp.gmail.com with ESMTPSA id r13-20020a05640251cd00b0042ab4e20543sm3388788edd.48.2022.06.17.01.57.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jun 2022 01:57:08 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: linux-kernel@vger.kernel.org,
	linaro-mm-sig@lists.linaro.org,
	dri-devel@lists.freedesktop.org,
	linux-media@vger.kernel.org,
	kernel-team@android.com
Date: Fri, 17 Jun 2022 10:57:02 +0200
Message-Id: <20220617085702.4298-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Message-ID-Hash: TG4SJ7FCSI3E3HIG5AXLHOFFWGXXGK4P
X-Message-ID-Hash: TG4SJ7FCSI3E3HIG5AXLHOFFWGXXGK4P
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: tjmercier@google.com, gregkh@google.com, sumit.semwal@linaro.org, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf: deprecate DMABUF_SYSFS_STATS
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TG4SJ7FCSI3E3HIG5AXLHOFFWGXXGK4P/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QWRkIGEgd2FybmluZyB0aGF0IHRoaXMgVUFQSSB3YXNuJ3Qgc3VjaCBhIGdvb2QgaWRlYSBhbmQg
c2hvdWxkbid0IGJlDQp1c2VkIGJ5IGFueWJvZHkuDQoNClRoYXQgc2hvdWxkIGdpdmUgdXMgYSBi
ZXR0ZXIgY2hhbmNlIHRvIHJlbW92ZSBpdCBhdCBzb21lIHBvaW50IGFuZA0KcHJldmVudHMgb3Ro
ZXJzIGZyb20gcnVubmluZyBpbnRvIHRoZSBzYW1lIGlzc3Vlcy4NCg0KU2lnbmVkLW9mZi1ieTog
Q2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KLS0tDQogZHJpdmVy
cy9kbWEtYnVmL0tjb25maWcgfCA2ICsrKysrLQ0KIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlv
bnMoKyksIDEgZGVsZXRpb24oLSkNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9LY29u
ZmlnIGIvZHJpdmVycy9kbWEtYnVmL0tjb25maWcNCmluZGV4IDU0MWVmZTAxYWJjNy4uZTRkYzUz
YTM2NDI4IDEwMDY0NA0KLS0tIGEvZHJpdmVycy9kbWEtYnVmL0tjb25maWcNCisrKyBiL2RyaXZl
cnMvZG1hLWJ1Zi9LY29uZmlnDQpAQCAtNzUsNyArNzUsNyBAQCBtZW51Y29uZmlnIERNQUJVRl9I
RUFQUw0KIAkgIGJldHdlZW4gZHJpdmVycy4NCiANCiBtZW51Y29uZmlnIERNQUJVRl9TWVNGU19T
VEFUUw0KLQlib29sICJETUEtQlVGIHN5c2ZzIHN0YXRpc3RpY3MiDQorCWJvb2wgIkRNQS1CVUYg
c3lzZnMgc3RhdGlzdGljcyAoREVQUkVDQVRFRCkiDQogCWRlcGVuZHMgb24gRE1BX1NIQVJFRF9C
VUZGRVINCiAJaGVscA0KIAkgICBDaG9vc2UgdGhpcyBvcHRpb24gdG8gZW5hYmxlIERNQS1CVUYg
c3lzZnMgc3RhdGlzdGljcw0KQEAgLTg1LDYgKzg1LDEwIEBAIG1lbnVjb25maWcgRE1BQlVGX1NZ
U0ZTX1NUQVRTDQogCSAgIHN0YXRpc3RpY3MgZm9yIHRoZSBETUEtQlVGIHdpdGggdGhlIHVuaXF1
ZSBpbm9kZSBudW1iZXINCiAJICAgPGlub2RlX251bWJlcj4uDQogDQorCSAgIFRoaXMgb3B0aW9u
IGlzIGRlcHJlY2F0ZWQgYW5kIHNob3VsZCBzb29uZXIgb3IgbGF0ZXIgYmUgcmVtb3ZlZC4NCisJ
ICAgQW5kcm9pZCBpcyB0aGUgb25seSB1c2VyIG9mIHRoaXMgYW5kIGl0IHR1cm5lZCBvdXQgdGhh
dCB0aGlzIHJlc3VsdGVkDQorCSAgIGluIHF1aXRlIHNvbWUgcGVyZm9ybWFuY2UgcHJvYmxlbXMu
DQorDQogc291cmNlICJkcml2ZXJzL2RtYS1idWYvaGVhcHMvS2NvbmZpZyINCiANCiBlbmRtZW51
DQotLSANCjIuMjUuMQ0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2ln
LWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
