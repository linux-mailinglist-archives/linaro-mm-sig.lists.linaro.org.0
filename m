Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 659FE605FD6
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Oct 2022 14:13:58 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 728953F58F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Oct 2022 12:13:57 +0000 (UTC)
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	by lists.linaro.org (Postfix) with ESMTPS id ED4623EEFA
	for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Oct 2022 12:13:21 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=YFmoiqdZ;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.218.41 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ej1-f41.google.com with SMTP id d26so46884902ejc.8
        for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Oct 2022 05:13:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iU7Ami80HgupJejJurFRg6REd9+0fdnmtvN6kf9fvrM=;
        b=YFmoiqdZUBvC+qFN4kk5CTQPdnf9XhwtohpUYscevmN3jNaa4iFjgNcC2RM4jiQnjB
         9QQenxNMrEOb47eteh6gQCK+aTvV9QnUjsLplkE/gnlBn6ZZCmvRMolI7L7lkS8gfDJN
         XzpHrUX6pWw4JKBoGNh96KK6b9moEebp2+jcLNqnpX8KY/h6kpX11NqOyTWU2Us9cK70
         njdXYgopNoZCXEkJZG5ecV5jI3yOTPGDQ9RiNZ3pTkUvACi07cPoLI0BEZu4xdQoiB7v
         a/DjTDxQFS+Y9jlzSNWjadoUcCyCE//D+fs8NQOdH80OulAh6H5w5F6WKZD3tYpl9k0y
         8HUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iU7Ami80HgupJejJurFRg6REd9+0fdnmtvN6kf9fvrM=;
        b=qYvCsMUmrzjyON1HTKlWSJqSJCfOR+7saWeEAn5FBeq4iZ9AdcpLVFo8m01BlVBcNV
         STZdAIySnBrn7FVlCFKY89+yBLTo+sUxpntN5+jeDwYlI0bGNYnEgC0a/9dLIWR6Sjcq
         jYFTTLdJn+mcLtnR5QToXTlIj1UuGQkgrYp7rKC6C0me2KDlmMN/F/fua96ZsG+kys/z
         +8yuWnF1MsM2yTaKQHGKDsELHJpeqyDL44RlbpLtlxHNApI3GKmj65H7M4uVTmbA+pCA
         q9oTOdwWHMOsc10xZTxuRHmuRnppuLnCCfDhkVnVl5IyM54d1dFrGyu2c0tzhTQdaZfL
         eIyA==
X-Gm-Message-State: ACrzQf0EjJqiebKInsLi0rpwmkpWhUbXWyA4yNrZbyIZAV1t5k79neW3
	4bU3v2HPhcqrlK6LwalVKt4=
X-Google-Smtp-Source: AMsMyM4E5G4lZ2GfE7xMWxIcUkc1BGvYjZ6cG1RBPZY7QZErHLQSw1Tvl2XS3C3UC5WoYKpuZXDWUA==
X-Received: by 2002:a17:907:2d91:b0:78d:8747:71b4 with SMTP id gt17-20020a1709072d9100b0078d874771b4mr10614819ejc.545.1666268001024;
        Thu, 20 Oct 2022 05:13:21 -0700 (PDT)
Received: from able.fritz.box (p5b0eacfe.dip0.t-ipconnect.de. [91.14.172.254])
        by smtp.gmail.com with ESMTPSA id s15-20020a05640217cf00b0045467008dd0sm12091979edy.35.2022.10.20.05.13.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Oct 2022 05:13:20 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: l.stach@pengutronix.de,
	nicolas@ndufresne.ca,
	ppaalanen@gmail.com,
	sumit.semwal@linaro.org,
	daniel@ffwll.ch,
	robdclark@gmail.com,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	linux-media@vger.kernel.org
Date: Thu, 20 Oct 2022 14:13:14 +0200
Message-Id: <20221020121316.3946-2-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221020121316.3946-1-christian.koenig@amd.com>
References: <20221020121316.3946-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: -----
X-Rspamd-Queue-Id: ED4623EEFA
X-Spamd-Result: default: False [-5.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-0.50)[209.85.218.41:from];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.41:from];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	DWL_DNSWL_NONE(0.00)[gmail.com:dkim];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TAGGED_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.964];
	DKIM_TRACE(0.00)[gmail.com:+];
	FREEMAIL_TO(0.00)[pengutronix.de,ndufresne.ca,gmail.com,linaro.org,ffwll.ch,lists.freedesktop.org,lists.linaro.org,vger.kernel.org];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: 44LIVS36CWUMQ3YYDKMQ6DZVKUKEC2AG
X-Message-ID-Hash: 44LIVS36CWUMQ3YYDKMQ6DZVKUKEC2AG
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 1/3] dma-buf: add dma_coherent flag
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/44LIVS36CWUMQ3YYDKMQ6DZVKUKEC2AG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

U3RhcnQgdG8gZml4IHRoZSBjb2hlcmVuY3kgaXNzdWVzIGZvciBub24gUENJIGRldmljZXMgYnkg
YWRkaW5nIGEgZG1hX2NvaGVyZW50DQpmbGFnIHRvIHRoZSBETUEtYnVmLg0KDQpUaGUgZmxhZyBz
aG91bGQgYmUgc2V0IGJ5IHRoZSBleHBvcnRlciBpZiBvbmx5IGRldmljZXMgd2hpY2ggY2FuIGRv
IGNvaGVyZW50DQpETUEtYWNjZXNzIHdpdGggcmVzcGVjdCB0byB0aGUgQ1BVIGNhY2hlIGFyZSBh
bGxvd2VkIHRvIGFjY2VzcyB0aGUgYnVmZmVyLg0KDQpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4g
S8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQotLS0NCiBkcml2ZXJzL2RtYS1idWYv
ZG1hLWJ1Zi5jIHwgIDUgKysrKysNCiBpbmNsdWRlL2xpbnV4L2RtYS1idWYuaCAgIHwgMTYgKysr
KysrKysrKysrKysrKw0KIDIgZmlsZXMgY2hhbmdlZCwgMjEgaW5zZXJ0aW9ucygrKQ0KDQpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEt
YnVmLmMNCmluZGV4IGM0MGQ3MmQzMThmZC4uNzUwOTgwN2JmNDg1IDEwMDY0NA0KLS0tIGEvZHJp
dmVycy9kbWEtYnVmL2RtYS1idWYuYw0KKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0K
QEAgLTE1LDYgKzE1LDcgQEANCiAjaW5jbHVkZSA8bGludXgvc2xhYi5oPg0KICNpbmNsdWRlIDxs
aW51eC9kbWEtYnVmLmg+DQogI2luY2x1ZGUgPGxpbnV4L2RtYS1mZW5jZS5oPg0KKyNpbmNsdWRl
IDxsaW51eC9kbWEtbWFwLW9wcy5oPg0KICNpbmNsdWRlIDxsaW51eC9hbm9uX2lub2Rlcy5oPg0K
ICNpbmNsdWRlIDxsaW51eC9leHBvcnQuaD4NCiAjaW5jbHVkZSA8bGludXgvZGVidWdmcy5oPg0K
QEAgLTYzNSw2ICs2MzYsNyBAQCBzdHJ1Y3QgZG1hX2J1ZiAqZG1hX2J1Zl9leHBvcnQoY29uc3Qg
c3RydWN0IGRtYV9idWZfZXhwb3J0X2luZm8gKmV4cF9pbmZvKQ0KIA0KIAlkbWFidWYtPnByaXYg
PSBleHBfaW5mby0+cHJpdjsNCiAJZG1hYnVmLT5vcHMgPSBleHBfaW5mby0+b3BzOw0KKwlkbWFi
dWYtPmRtYV9jb2hlcmVudCA9IGV4cF9pbmZvLT5jb2hlcmVudDsNCiAJZG1hYnVmLT5zaXplID0g
ZXhwX2luZm8tPnNpemU7DQogCWRtYWJ1Zi0+ZXhwX25hbWUgPSBleHBfaW5mby0+ZXhwX25hbWU7
DQogCWRtYWJ1Zi0+b3duZXIgPSBleHBfaW5mby0+b3duZXI7DQpAQCAtODk0LDYgKzg5Niw5IEBA
IGRtYV9idWZfZHluYW1pY19hdHRhY2goc3RydWN0IGRtYV9idWYgKmRtYWJ1Ziwgc3RydWN0IGRl
dmljZSAqZGV2LA0KIAlpZiAoV0FSTl9PTihpbXBvcnRlcl9vcHMgJiYgIWltcG9ydGVyX29wcy0+
bW92ZV9ub3RpZnkpKQ0KIAkJcmV0dXJuIEVSUl9QVFIoLUVJTlZBTCk7DQogDQorCWlmIChkbWFi
dWYtPmRtYV9jb2hlcmVudCAmJiAhZGV2X2lzX2RtYV9jb2hlcmVudChkZXYpKQ0KKwkJcmV0dXJu
IEVSUl9QVFIoLUVJTlZBTCk7DQorDQogCWF0dGFjaCA9IGt6YWxsb2Moc2l6ZW9mKCphdHRhY2gp
LCBHRlBfS0VSTkVMKTsNCiAJaWYgKCFhdHRhY2gpDQogCQlyZXR1cm4gRVJSX1BUUigtRU5PTUVN
KTsNCmRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaCBiL2luY2x1ZGUvbGludXgv
ZG1hLWJ1Zi5oDQppbmRleCA2ZmE4ZDRlMjk3MTkuLmYyMDgzYjk0YjExNiAxMDA2NDQNCi0tLSBh
L2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oDQorKysgYi9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaA0K
QEAgLTMyNiw2ICszMjYsMjAgQEAgc3RydWN0IGRtYV9idWYgew0KIAkvKiogQG9wczogZG1hX2J1
Zl9vcHMgYXNzb2NpYXRlZCB3aXRoIHRoaXMgYnVmZmVyIG9iamVjdC4gKi8NCiAJY29uc3Qgc3Ry
dWN0IGRtYV9idWZfb3BzICpvcHM7DQogDQorCS8qKg0KKwkgKiBAZG1hX2NvaGVyZW50Og0KKwkg
Kg0KKwkgKiBUcnVlIGlmIHRoZSBidWZmZXIgaXMgYmFja2VkIGJ5IERNQSBjb2hlcmVudCBtZW1v
cnkgd2l0aCByZXNwZWN0IHRvDQorCSAqIHRoZSBDUFUgY2FjaGUgZXZlbiBpZiB0aGUgYXJjaGl0
ZWN0dXJlIGNhbiBzdXBwb3J0IGluY29oZXJlbnQNCisJICogZGV2aWNlcy4NCisJICoNCisJICog
VXN1YWxseSBtaXJyb3JzIHRoZSByZXN1bHQgb2YgZGV2X2lzX2RtYV9jb2hlcmVudCgpIG9mIHRo
ZSBleHBvcnRlciwNCisJICogYnV0IGNhbiBiZSBjbGVhcmVkIGJ5IHRoZSBleHBvcnRlciB0byBh
bGxvdyBpbmNvaGVyZW50IGRldmljZXMNCisJICogYWNjZXNzIHRvIHRoZSBidWZmZXIgaWYgdGhl
IGV4cG9ydGVyIHRha2VzIGNhcmUgb2YgY29oZXJlbmN5IGZvciBDUFUNCisJICogYWNjZXNzZXMu
DQorCSAqLw0KKwlib29sIGRtYV9jb2hlcmVudDsNCisNCiAJLyoqDQogCSAqIEB2bWFwcGluZ19j
b3VudGVyOg0KIAkgKg0KQEAgLTUyNCw2ICs1MzgsNyBAQCBzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2ht
ZW50IHsNCiAgKiBAb3BzOglBdHRhY2ggYWxsb2NhdG9yLWRlZmluZWQgZG1hIGJ1ZiBvcHMgdG8g
dGhlIG5ldyBidWZmZXINCiAgKiBAc2l6ZToJU2l6ZSBvZiB0aGUgYnVmZmVyIC0gaW52YXJpYW50
IG92ZXIgdGhlIGxpZmV0aW1lIG9mIHRoZSBidWZmZXINCiAgKiBAZmxhZ3M6CW1vZGUgZmxhZ3Mg
Zm9yIHRoZSBmaWxlDQorICogQGNvaGVyZW50OglJZiBETUEgYWNjZXNzZXMgbXVzdCBiZSBjb2hl
cmVudCB0byB0aGUgQ1BVIGNhY2hlLg0KICAqIEByZXN2OglyZXNlcnZhdGlvbi1vYmplY3QsIE5V
TEwgdG8gYWxsb2NhdGUgZGVmYXVsdCBvbmUNCiAgKiBAcHJpdjoJQXR0YWNoIHByaXZhdGUgZGF0
YSBvZiBhbGxvY2F0b3IgdG8gdGhpcyBidWZmZXINCiAgKg0KQEAgLTUzNiw2ICs1NTEsNyBAQCBz
dHJ1Y3QgZG1hX2J1Zl9leHBvcnRfaW5mbyB7DQogCWNvbnN0IHN0cnVjdCBkbWFfYnVmX29wcyAq
b3BzOw0KIAlzaXplX3Qgc2l6ZTsNCiAJaW50IGZsYWdzOw0KKwlib29sIGNvaGVyZW50Ow0KIAlz
dHJ1Y3QgZG1hX3Jlc3YgKnJlc3Y7DQogCXZvaWQgKnByaXY7DQogfTsNCi0tIA0KMi4yNS4xDQoN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1t
bS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1
bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGlu
YXJvLm9yZwo=
