Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F013605FDC
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Oct 2022 14:14:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8DC563F598
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Oct 2022 12:14:20 +0000 (UTC)
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	by lists.linaro.org (Postfix) with ESMTPS id 1D4083EEFA
	for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Oct 2022 12:13:27 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=YqFUB2RV;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.218.53 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ej1-f53.google.com with SMTP id bj12so46836414ejb.13
        for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Oct 2022 05:13:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6+v29EKFl+eJvb82q1HKwVTg2HY11/VB4Svx4P9W+lo=;
        b=YqFUB2RVnHN5EsUo3VW1I9AsNIcJJQLV4S+D44r9T9b6ym2gHsJKjzGJimsfO6xmbU
         A/+REzVhwdsNLSGCWIlcXJnVzRV5XGbNg2/RaaZKNEi53jQhLaFGPH8liVB+C996ROnc
         E1C7cbICnMASBOMmLMtdY6huElsnoE+NKhqTKQuA/qOlUY6R49cmAb/38cLDHTGowhY4
         yUOGRnuAFJ5PnrBCfk8n9kco9tJZxEyyQWN+mfjRog96QiZ7rsio7eYITjKsjVmyrG7q
         jZwXCk33x8Jwjap9Zfv/JsVGZhluG1rEZaKxg0vX/31a+Q3b8L3mtUsmk97ho1lIr3Iy
         5Q3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6+v29EKFl+eJvb82q1HKwVTg2HY11/VB4Svx4P9W+lo=;
        b=kbM9yIHyoSUPbzsCdi3qjujogvMFWDuYyXZp6gcuo8I/8xM/Y5+szmr6YF9Akv5PNC
         GC4RVMCqkmWfSfAAKfx3wNF539O7VeWY8A9wO2izFmiUm/DzMc1tNtzQj6sJZZpsUOVj
         UEzcTyI4/yd7NS9H1AUeCnLjwrecDp2+A5XhGV5t3MfgXi+Yax0WgFaXaG28gVQT000j
         zET8H7tBnkE9OsnOOPrje4VFveBxJP/vezBD6dWqCRggEgn0TdwRys1X9eVkrl2io7hA
         vw7dq60RYsaOaOEUh+8ThrVxMsXsb9YUrTo66e+yICnuiW38fUbovTfpcOHFaTBiPy2G
         KtTg==
X-Gm-Message-State: ACrzQf3SQLlNF6bKvbZZ159ot5eoIgY+Pm1HszyFJealZjHFnEx+SSKw
	qiG8lcsK6GrVbIsnTjrnSa0=
X-Google-Smtp-Source: AMsMyM6BChwqh4PIcxBaoBdOLcOjBF6P/9MGAQWN+q+1y6+Muz30Cs5s0ZOBk0hSI0JvdUfHbEu7gA==
X-Received: by 2002:a17:907:31c4:b0:78d:9b2f:4e1a with SMTP id xf4-20020a17090731c400b0078d9b2f4e1amr10731462ejb.306.1666268006079;
        Thu, 20 Oct 2022 05:13:26 -0700 (PDT)
Received: from able.fritz.box (p5b0eacfe.dip0.t-ipconnect.de. [91.14.172.254])
        by smtp.gmail.com with ESMTPSA id s15-20020a05640217cf00b0045467008dd0sm12091979edy.35.2022.10.20.05.13.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Oct 2022 05:13:25 -0700 (PDT)
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
Date: Thu, 20 Oct 2022 14:13:15 +0200
Message-Id: <20221020121316.3946-3-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221020121316.3946-1-christian.koenig@amd.com>
References: <20221020121316.3946-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: -----
X-Rspamd-Queue-Id: 1D4083EEFA
X-Spamd-Result: default: False [-5.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-0.50)[209.85.218.53:from];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.53:from];
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
	NEURAL_HAM(-0.00)[-0.919];
	DKIM_TRACE(0.00)[gmail.com:+];
	FREEMAIL_TO(0.00)[pengutronix.de,ndufresne.ca,gmail.com,linaro.org,ffwll.ch,lists.freedesktop.org,lists.linaro.org,vger.kernel.org];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: OXU6KAZJZ4ZL42SBJFYFOMHOCZ2BHCFC
X-Message-ID-Hash: OXU6KAZJZ4ZL42SBJFYFOMHOCZ2BHCFC
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 2/3] drm/prime: set the dma_coherent flag for export
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OXU6KAZJZ4ZL42SBJFYFOMHOCZ2BHCFC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

V2hlbiBhIGRldmljZSBkcml2ZXIgaXMgc25vb3BpbmcgdGhlIENQVSBjYWNoZSBkdXJpbmcgYWNj
ZXNzIHdlIGFzc3VtZQ0KdGhhdCBhbGwgaW1wb3J0ZXJzIG5lZWQgdG8gYmUgYWJsZSB0byBzbm9v
cCB0aGUgQ1BVIGNhY2hlIGFzIHdlbGwuDQoNClNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7Zu
aWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCi0tLQ0KIGRyaXZlcnMvZ3B1L2RybS9kcm1f
cHJpbWUuYyB8IDIgKysNCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspDQoNCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX3ByaW1lLmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJt
X3ByaW1lLmMNCmluZGV4IDIwZTEwOWE4MDJhZS4uZDVjNzBiNmZlOGE0IDEwMDY0NA0KLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2RybV9wcmltZS5jDQorKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX3By
aW1lLmMNCkBAIC0yOCw2ICsyOCw3IEBADQogDQogI2luY2x1ZGUgPGxpbnV4L2V4cG9ydC5oPg0K
ICNpbmNsdWRlIDxsaW51eC9kbWEtYnVmLmg+DQorI2luY2x1ZGUgPGxpbnV4L2RtYS1tYXAtb3Bz
Lmg+DQogI2luY2x1ZGUgPGxpbnV4L3JidHJlZS5oPg0KICNpbmNsdWRlIDxsaW51eC9tb2R1bGUu
aD4NCiANCkBAIC04ODksNiArODkwLDcgQEAgc3RydWN0IGRtYV9idWYgKmRybV9nZW1fcHJpbWVf
ZXhwb3J0KHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqLA0KIAkJLnNpemUgPSBvYmotPnNpemUs
DQogCQkuZmxhZ3MgPSBmbGFncywNCiAJCS5wcml2ID0gb2JqLA0KKwkJLmNvaGVyZW50ID0gZGV2
X2lzX2RtYV9jb2hlcmVudChkZXYtPmRldiksDQogCQkucmVzdiA9IG9iai0+cmVzdiwNCiAJfTsN
CiANCi0tIA0KMi4yNS4xDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1z
aWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
