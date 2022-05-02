Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DFBD517477
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  2 May 2022 18:37:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 505994805C
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  2 May 2022 16:37:40 +0000 (UTC)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	by lists.linaro.org (Postfix) with ESMTPS id C649B3EE32
	for <linaro-mm-sig@lists.linaro.org>; Mon,  2 May 2022 16:37:29 +0000 (UTC)
Received: by mail-wr1-f42.google.com with SMTP id k2so20241548wrd.5
        for <linaro-mm-sig@lists.linaro.org>; Mon, 02 May 2022 09:37:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Ztozpp4Hd7P88p5EylObdLnFFM2e9No0uy0uVps0Q4o=;
        b=l8cnH0/oWnlGs4iC9nSE0GWCX5g6JqtmjJMCjqSOAwOlKROP5Dav+7qr2vV22I5AyR
         P29H9FiZL0l2XMAOD39ti1qK7CTYjhCfhB/1+yXOLeBeRWny9/cVyMmgwWfoI/s/Irld
         ZRtRAzcb0kVhafr3YK4q7sAqJH9N878z6sN9gTuvwmb5v79Q5utfbdU/1lMGWZC9QQFQ
         UNgGqrfbGFfgl4WqqTb8n9jL+C74NUCcdbKkwWbHWD8HODMIuK3SPi81YaAuOHrXN9cS
         2i0O0Ls4YIs41WHjk2OSpRFoFPhhX0T09C3YwERYz33I3c2eqkXCNeI1/XrcKaWKZgfC
         uTWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Ztozpp4Hd7P88p5EylObdLnFFM2e9No0uy0uVps0Q4o=;
        b=HeMy0dHxXYXu0pp2j3TSrR+FnrGnrLrP0Nfan4fKrnzlLsgzX4Qx+rwBdANUlWrRek
         swjWP9e1iCnnAi36MxXI+pG8YfP8mBACU1TN1BIjO+9XIpkK4k3KzDmqQSyqTz02E0TD
         KGGj0Tqy/sfo0ZeY02QNjxnW2wzh8QOupvu8phTzR4TlY0NhTwFoO/Rsyn78MuQUFPEr
         tUCcTwiOhBVGoH4jWcHm1Y36cHANJ9BdDE7BSePQIzrcbgKn20Z+am8JEp0rnZAPgx5l
         /2UHCmc/KH1rAwbd8ENE3XYX2c0JAYqLH+N23AFnT/xlJ7Vf7o/QAti/CSqrYupZkFiJ
         RuXA==
X-Gm-Message-State: AOAM533xX9tAzaDMV4iZxpthPktn56cT9xLgu1h8cIgMnyzIJFmJGvWu
	s3o6sq68uYQe68of0O6Rihc=
X-Google-Smtp-Source: ABdhPJz2JXWWJflLQjuCGIgmn7WtX7jC1WTxfxIIZ7Mwf9txYB3Hit3CNEpghfRADVo4PLGr1oZzVg==
X-Received: by 2002:a05:6000:c:b0:20a:df2e:2c38 with SMTP id h12-20020a056000000c00b0020adf2e2c38mr9823627wrx.481.1651509448873;
        Mon, 02 May 2022 09:37:28 -0700 (PDT)
Received: from able.fritz.box (p57b0b9e1.dip0.t-ipconnect.de. [87.176.185.225])
        by smtp.gmail.com with ESMTPSA id p14-20020adfaa0e000000b0020c5253d8f6sm7294694wrd.66.2022.05.02.09.37.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 May 2022 09:37:28 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: daniel@ffwll.ch,
	jason@jlekstrand.net,
	daniels@collabora.com,
	skhawaja@google.com,
	maad.aldabagh@amd.com,
	sergemetral@google.com,
	sumit.semwal@linaro.org,
	gustavo@padovan.org,
	Felix.Kuehling@amd.com,
	alexander.deucher@amd.com,
	tzimmermann@suse.de,
	tvrtko.ursulin@linux.intel.com,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Date: Mon,  2 May 2022 18:37:08 +0200
Message-Id: <20220502163722.3957-2-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220502163722.3957-1-christian.koenig@amd.com>
References: <20220502163722.3957-1-christian.koenig@amd.com>
MIME-Version: 1.0
Message-ID-Hash: YYVCDRQYTAHGQDKXD4C2PVGAE4SOAM4W
X-Message-ID-Hash: YYVCDRQYTAHGQDKXD4C2PVGAE4SOAM4W
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 01/15] dma-buf: rename DMA_FENCE_FLAG_USER_BITS to _DEVICE
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YYVCDRQYTAHGQDKXD4C2PVGAE4SOAM4W/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhpcyBpcyBzdXBwb3NlZCB0byBiZSB1c2VkIGJ5IGRldmljZSBkcml2ZXJzLg0KDQpTaWduZWQt
b2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQotLS0N
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuaCAgICAgICB8IDIgKy0NCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3N3X2ZlbmNlX3dvcmsuaCB8IDIgKy0NCiBkcml2ZXJzL2dw
dS9kcm0vbm91dmVhdS9ub3V2ZWF1X2ZlbmNlLmMgICB8IDQgKystLQ0KIGluY2x1ZGUvbGludXgv
ZG1hLWZlbmNlLmggICAgICAgICAgICAgICAgIHwgNCArKy0tDQogNCBmaWxlcyBjaGFuZ2VkLCA2
IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVx
dWVzdC5oDQppbmRleCAyOGIxZjlkYjU0ODcuLjcxNmM4YzQxM2NjNCAxMDA2NDQNCi0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5oDQorKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3JlcXVlc3QuaA0KQEAgLTgwLDcgKzgwLDcgQEAgZW51bSB7DQogCSAqDQogCSAq
IFNlZSBpOTE1X3JlcXVlc3RfaXNfYWN0aXZlKCkNCiAJICovDQotCUk5MTVfRkVOQ0VfRkxBR19B
Q1RJVkUgPSBETUFfRkVOQ0VfRkxBR19VU0VSX0JJVFMsDQorCUk5MTVfRkVOQ0VfRkxBR19BQ1RJ
VkUgPSBETUFfRkVOQ0VfRkxBR19EUklWRVIsDQogDQogCS8qDQogCSAqIEk5MTVfRkVOQ0VfRkxB
R19QUVVFVUUgLSB0aGlzIHJlcXVlc3QgaXMgcmVhZHkgZm9yIGV4ZWN1dGlvbg0KZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc3dfZmVuY2Vfd29yay5oIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9zd19mZW5jZV93b3JrLmgNCmluZGV4IGQ1NjgwNjkxOGQxMy4uZWNl
MGEwNmU1OThjIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zd19mZW5j
ZV93b3JrLmgNCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc3dfZmVuY2Vfd29yay5o
DQpAQCAtMzMsNyArMzMsNyBAQCBzdHJ1Y3QgZG1hX2ZlbmNlX3dvcmsgew0KIH07DQogDQogZW51
bSB7DQotCURNQV9GRU5DRV9XT1JLX0lNTSA9IERNQV9GRU5DRV9GTEFHX1VTRVJfQklUUywNCisJ
RE1BX0ZFTkNFX1dPUktfSU1NID0gRE1BX0ZFTkNFX0ZMQUdfRFJJVkVSLA0KIH07DQogDQogdm9p
ZCBkbWFfZmVuY2Vfd29ya19pbml0KHN0cnVjdCBkbWFfZmVuY2Vfd29yayAqZiwNCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vbm91dmVhdS9ub3V2ZWF1X2ZlbmNlLmMgYi9kcml2ZXJzL2dw
dS9kcm0vbm91dmVhdS9ub3V2ZWF1X2ZlbmNlLmMNCmluZGV4IDdmMDFkY2Y4MWZhYi4uZTJmNjFi
MzRjYzFlIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9ncHUvZHJtL25vdXZlYXUvbm91dmVhdV9mZW5j
ZS5jDQorKysgYi9kcml2ZXJzL2dwdS9kcm0vbm91dmVhdS9ub3V2ZWF1X2ZlbmNlLmMNCkBAIC02
MSw3ICs2MSw3IEBAIG5vdXZlYXVfZmVuY2Vfc2lnbmFsKHN0cnVjdCBub3V2ZWF1X2ZlbmNlICpm
ZW5jZSkNCiAJbGlzdF9kZWwoJmZlbmNlLT5oZWFkKTsNCiAJcmN1X2Fzc2lnbl9wb2ludGVyKGZl
bmNlLT5jaGFubmVsLCBOVUxMKTsNCiANCi0JaWYgKHRlc3RfYml0KERNQV9GRU5DRV9GTEFHX1VT
RVJfQklUUywgJmZlbmNlLT5iYXNlLmZsYWdzKSkgew0KKwlpZiAodGVzdF9iaXQoRE1BX0ZFTkNF
X0ZMQUdfRFJJVkVSLCAmZmVuY2UtPmJhc2UuZmxhZ3MpKSB7DQogCQlzdHJ1Y3Qgbm91dmVhdV9m
ZW5jZV9jaGFuICpmY3R4ID0gbm91dmVhdV9mY3R4KGZlbmNlKTsNCiANCiAJCWlmICghLS1mY3R4
LT5ub3RpZnlfcmVmKQ0KQEAgLTUxMCw3ICs1MTAsNyBAQCBzdGF0aWMgYm9vbCBub3V2ZWF1X2Zl
bmNlX2VuYWJsZV9zaWduYWxpbmcoc3RydWN0IGRtYV9mZW5jZSAqZikNCiANCiAJcmV0ID0gbm91
dmVhdV9mZW5jZV9ub19zaWduYWxpbmcoZik7DQogCWlmIChyZXQpDQotCQlzZXRfYml0KERNQV9G
RU5DRV9GTEFHX1VTRVJfQklUUywgJmZlbmNlLT5iYXNlLmZsYWdzKTsNCisJCXNldF9iaXQoRE1B
X0ZFTkNFX0ZMQUdfRFJJVkVSLCAmZmVuY2UtPmJhc2UuZmxhZ3MpOw0KIAllbHNlIGlmICghLS1m
Y3R4LT5ub3RpZnlfcmVmKQ0KIAkJbnZpZl9ub3RpZnlfcHV0KCZmY3R4LT5ub3RpZnkpOw0KIA0K
ZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmggYi9pbmNsdWRlL2xpbnV4L2Rt
YS1mZW5jZS5oDQppbmRleCA3NzVjZGMwYjRmMjQuLmFmZWE4MmVjNTk0NiAxMDA2NDQNCi0tLSBh
L2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmgNCisrKyBiL2luY2x1ZGUvbGludXgvZG1hLWZlbmNl
LmgNCkBAIC00OSw3ICs0OSw3IEBAIHN0cnVjdCBkbWFfZmVuY2VfY2I7DQogICogRE1BX0ZFTkNF
X0ZMQUdfU0lHTkFMRURfQklUIC0gZmVuY2UgaXMgYWxyZWFkeSBzaWduYWxlZA0KICAqIERNQV9G
RU5DRV9GTEFHX1RJTUVTVEFNUF9CSVQgLSB0aW1lc3RhbXAgcmVjb3JkZWQgZm9yIGZlbmNlIHNp
Z25hbGluZw0KICAqIERNQV9GRU5DRV9GTEFHX0VOQUJMRV9TSUdOQUxfQklUIC0gZW5hYmxlX3Np
Z25hbGluZyBtaWdodCBoYXZlIGJlZW4gY2FsbGVkDQotICogRE1BX0ZFTkNFX0ZMQUdfVVNFUl9C
SVRTIC0gc3RhcnQgb2YgdGhlIHVudXNlZCBiaXRzLCBjYW4gYmUgdXNlZCBieSB0aGUNCisgKiBE
TUFfRkVOQ0VfRkxBR19EUklWRVIgLSBzdGFydCBvZiB0aGUgdW51c2VkIGJpdHMsIGNhbiBiZSB1
c2VkIGJ5IHRoZQ0KICAqIGltcGxlbWVudGVyIG9mIHRoZSBmZW5jZSBmb3IgaXRzIG93biBwdXJw
b3Nlcy4gQ2FuIGJlIHVzZWQgaW4gZGlmZmVyZW50DQogICogd2F5cyBieSBkaWZmZXJlbnQgZmVu
Y2UgaW1wbGVtZW50ZXJzLCBzbyBkbyBub3QgcmVseSBvbiB0aGlzLg0KICAqDQpAQCAtOTksNyAr
OTksNyBAQCBlbnVtIGRtYV9mZW5jZV9mbGFnX2JpdHMgew0KIAlETUFfRkVOQ0VfRkxBR19TSUdO
QUxFRF9CSVQsDQogCURNQV9GRU5DRV9GTEFHX1RJTUVTVEFNUF9CSVQsDQogCURNQV9GRU5DRV9G
TEFHX0VOQUJMRV9TSUdOQUxfQklULA0KLQlETUFfRkVOQ0VfRkxBR19VU0VSX0JJVFMsIC8qIG11
c3QgYWx3YXlzIGJlIGxhc3QgbWVtYmVyICovDQorCURNQV9GRU5DRV9GTEFHX0RSSVZFUiwgLyog
bXVzdCBhbHdheXMgYmUgbGFzdCBtZW1iZXIgKi8NCiB9Ow0KIA0KIHR5cGVkZWYgdm9pZCAoKmRt
YV9mZW5jZV9mdW5jX3QpKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLA0KLS0gDQoyLjI1LjENCg0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1t
LXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVu
c3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5h
cm8ub3JnCg==
