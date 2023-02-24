Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C4ECA6A22DF
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Feb 2023 21:02:44 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D3CB344244
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Feb 2023 20:02:43 +0000 (UTC)
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	by lists.linaro.org (Postfix) with ESMTPS id D30CE3F33A
	for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Feb 2023 20:02:02 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=KVIenKwh;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.214.170 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pl1-f170.google.com with SMTP id bh1so606191plb.11
        for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Feb 2023 12:02:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BjpvB6oPPHx1azLHzg6QZzAF+790oeDvTeHTT2aGPnU=;
        b=KVIenKwh8Ra0IYJKT+/nF0y9Cr8kAZkAkoXqA+8kOBiUEf5CM+tN0trf1WKWR/Dik/
         t816aUVYIS+dwzDCsrw2h+mge9bndhFtiG2TKKPUU0etFn0CNu/SaoeTjk2Y9QUGvAX4
         oOaBnzt9jVjPnWLWrca7kkC4UaGhGkB2AJbTpooRjMjPdZZHL6b27k4fX2mTmHO5VoRl
         XM0lGp1zQxd5GIDQOWrkk9lZxYH6PVpatjCY6SX1qCoy+QgpwkORwYZhqFDVWTl0H+Tf
         cfxy0zN1uiEtYST0pPGpqbxtnzl6xljbKT9fPvX8UncCfqbA4Te8EskFDsIUjrMi/Tbt
         DjLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BjpvB6oPPHx1azLHzg6QZzAF+790oeDvTeHTT2aGPnU=;
        b=HAE12KCgZlN6Hvyq2CN5P2UMmE0DZZKhEx0IX2ykGBa9UknO44Szuh1o0DVsQEUY6z
         G1fxXA/AMIGW/5dQGFABEc4TaW1mQQxpqno8iJ2cn0LrsQH/s/GbedpRBn9D0QTkcC9h
         A9V12E9KzXyEl+IAwRTcqYqE+4LcixwjRNKQpUUONc/6302fB/yJdIhWEiWT+czP34im
         ztYEzcAmS52Cqa0KRYpCYjGYupmTujzP5Wcwq3OnslaSjEY83FCGrkvkecfS2q4bmqNP
         6Cz9sSogXV3AgV0ADOezxD/so9+k6pPgZxDf4xXHeCFYQzG6krMAL5FZ+Lo4l2oJgugJ
         Z6uA==
X-Gm-Message-State: AO0yUKX4c2eMn2FbB01k3dJDq1eJz14YmsEpZVmsiFQHHIz7ngtRDMYf
	DBe3PSFkEOY4EniSDRHGLjo=
X-Google-Smtp-Source: AK7set+9rmp1d+NriLvJCoJx2WT3H6tb4kY4AkvBvGlmYmXHcQpGTZTSxGiQ9ZUCe0/7HOWhXegI/w==
X-Received: by 2002:a17:902:c946:b0:19a:f556:e389 with SMTP id i6-20020a170902c94600b0019af556e389mr19042785pla.65.1677268921892;
        Fri, 24 Feb 2023 12:02:01 -0800 (PST)
Received: from localhost ([2a00:79e1:abd:4a00:61b:48ed:72ab:435b])
        by smtp.gmail.com with ESMTPSA id e8-20020a170902744800b0019a8468cbe7sm9762719plt.224.2023.02.24.12.02.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Feb 2023 12:02:01 -0800 (PST)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Fri, 24 Feb 2023 12:01:29 -0800
Message-Id: <20230224200155.2510320-2-robdclark@gmail.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230224200155.2510320-1-robdclark@gmail.com>
References: <20230224200155.2510320-1-robdclark@gmail.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: D30CE3F33A
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-1.00)[2a00:79e1:abd:4a00:61b:48ed:72ab:435b:received,209.85.214.170:from];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.214.170:from];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_RCPT(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[18];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,ffwll.ch,gmail.com,daenzer.net,intel.com,amd.com,emersion.fr,chromium.org,linaro.org,padovan.org,vger.kernel.org,lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: GPWQVDWMSS4FKPALW5Z5R5DFIUR6UYXO
X-Message-ID-Hash: GPWQVDWMSS4FKPALW5Z5R5DFIUR6UYXO
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: freedreno@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, =?UTF-8?q?Michel=20D=C3=A4nzer?= <michel@daenzer.net>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Alex Deucher <alexander.deucher@amd.com>, Pekka Paalanen <ppaalanen@gmail.com>, Simon Ser <contact@emersion.fr>, Luben Tuikov <luben.tuikov@amd.com>, Rob Clark <robdclark@chromium.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, open list <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v6 01/15] dma-buf/dma-fence: Add deadline awareness
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GPWQVDWMSS4FKPALW5Z5R5DFIUR6UYXO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RnJvbTogUm9iIENsYXJrIDxyb2JkY2xhcmtAY2hyb21pdW0ub3JnPg0KDQpBZGQgYSB3YXkgdG8g
aGludCB0byB0aGUgZmVuY2Ugc2lnbmFsZXIgb2YgYW4gdXBjb21pbmcgZGVhZGxpbmUsIHN1Y2gg
YXMNCnZibGFuaywgd2hpY2ggdGhlIGZlbmNlIHdhaXRlciB3b3VsZCBwcmVmZXIgbm90IHRvIG1p
c3MuICBUaGlzIGlzIHRvIGFpZA0KdGhlIGZlbmNlIHNpZ25hbGVyIGluIG1ha2luZyBwb3dlciBt
YW5hZ2VtZW50IGRlY2lzaW9ucywgbGlrZSBib29zdGluZw0KZnJlcXVlbmN5IGFzIHRoZSBkZWFk
bGluZSBhcHByb2FjaGVzIGFuZCBhd2FyZW5lc3Mgb2YgbWlzc2luZyBkZWFkbGluZXMNCnNvIHRo
YXQgY2FuIGJlIGZhY3RvcmVkIGluIHRvIHRoZSBmcmVxdWVuY3kgc2NhbGluZy4NCg0KdjI6IERy
b3AgZG1hX2ZlbmNlOjpkZWFkbGluZSBhbmQgcmVsYXRlZCBsb2dpYyB0byBmaWx0ZXIgZHVwbGlj
YXRlDQogICAgZGVhZGxpbmVzLCB0byBhdm9pZCBpbmNyZWFzaW5nIGRtYV9mZW5jZSBzaXplLiAg
VGhlIGZlbmNlLWNvbnRleHQNCiAgICBpbXBsZW1lbnRhdGlvbiB3aWxsIG5lZWQgc2ltaWxhciBs
b2dpYyB0byB0cmFjayBkZWFkbGluZXMgb2YgYWxsDQogICAgdGhlIGZlbmNlcyBvbiB0aGUgc2Ft
ZSB0aW1lbGluZS4gIFtja29lbmlnXQ0KdjM6IENsYXJpZnkgbG9ja2luZyB3cnQuIHNldF9kZWFk
bGluZSBjYWxsYmFjaw0KdjQ6IENsYXJpZnkgaW4gZG9jcyBjb21tZW50IHRoYXQgdGhpcyBpcyBh
IGhpbnQNCnY1OiBEcm9wIERNQV9GRU5DRV9GTEFHX0hBU19ERUFETElORV9CSVQuDQoNClNpZ25l
ZC1vZmYtYnk6IFJvYiBDbGFyayA8cm9iZGNsYXJrQGNocm9taXVtLm9yZz4NClJldmlld2VkLWJ5
OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQotLS0NCiBkcml2
ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMgfCAyMCArKysrKysrKysrKysrKysrKysrKw0KIGluY2x1
ZGUvbGludXgvZG1hLWZlbmNlLmggICB8IDE5ICsrKysrKysrKysrKysrKysrKysNCiAyIGZpbGVz
IGNoYW5nZWQsIDM5IGluc2VydGlvbnMoKykNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1
Zi9kbWEtZmVuY2UuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYw0KaW5kZXggMGRlMDQ4
MmNkMzZlLi43MWIyZTg4M2YzMDQgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZl
bmNlLmMNCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYw0KQEAgLTkxMiw2ICs5MTIs
MjYgQEAgZG1hX2ZlbmNlX3dhaXRfYW55X3RpbWVvdXQoc3RydWN0IGRtYV9mZW5jZSAqKmZlbmNl
cywgdWludDMyX3QgY291bnQsDQogfQ0KIEVYUE9SVF9TWU1CT0woZG1hX2ZlbmNlX3dhaXRfYW55
X3RpbWVvdXQpOw0KIA0KKy8qKg0KKyAqIGRtYV9mZW5jZV9zZXRfZGVhZGxpbmUgLSBzZXQgZGVz
aXJlZCBmZW5jZS13YWl0IGRlYWRsaW5lIGhpbnQNCisgKiBAZmVuY2U6ICAgIHRoZSBmZW5jZSB0
aGF0IGlzIHRvIGJlIHdhaXRlZCBvbg0KKyAqIEBkZWFkbGluZTogdGhlIHRpbWUgYnkgd2hpY2gg
dGhlIHdhaXRlciBob3BlcyBmb3IgdGhlIGZlbmNlIHRvIGJlDQorICogICAgICAgICAgICBzaWdu
YWxlZA0KKyAqDQorICogR2l2ZSB0aGUgZmVuY2Ugc2lnbmFsZXIgYSBoaW50IGFib3V0IGFuIHVw
Y29taW5nIGRlYWRsaW5lLCBzdWNoIGFzDQorICogdmJsYW5rLCBieSB3aGljaCBwb2ludCB0aGUg
d2FpdGVyIHdvdWxkIHByZWZlciB0aGUgZmVuY2UgdG8gYmUNCisgKiBzaWduYWxlZCBieS4gIFRo
aXMgaXMgaW50ZW5kZWQgdG8gZ2l2ZSBmZWVkYmFjayB0byB0aGUgZmVuY2Ugc2lnbmFsZXINCisg
KiB0byBhaWQgaW4gcG93ZXIgbWFuYWdlbWVudCBkZWNpc2lvbnMsIHN1Y2ggYXMgYm9vc3Rpbmcg
R1BVIGZyZXF1ZW5jeQ0KKyAqIGlmIGEgcGVyaW9kaWMgdmJsYW5rIGRlYWRsaW5lIGlzIGFwcHJv
YWNoaW5nIGJ1dCB0aGUgZmVuY2UgaXMgbm90DQorICogeWV0IHNpZ25hbGVkLi4NCisgKi8NCit2
b2lkIGRtYV9mZW5jZV9zZXRfZGVhZGxpbmUoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsIGt0aW1l
X3QgZGVhZGxpbmUpDQorew0KKwlpZiAoZmVuY2UtPm9wcy0+c2V0X2RlYWRsaW5lICYmICFkbWFf
ZmVuY2VfaXNfc2lnbmFsZWQoZmVuY2UpKQ0KKwkJZmVuY2UtPm9wcy0+c2V0X2RlYWRsaW5lKGZl
bmNlLCBkZWFkbGluZSk7DQorfQ0KK0VYUE9SVF9TWU1CT0woZG1hX2ZlbmNlX3NldF9kZWFkbGlu
ZSk7DQorDQogLyoqDQogICogZG1hX2ZlbmNlX2Rlc2NyaWJlIC0gRHVtcCBmZW5jZSBkZXNjcmli
dGlvbiBpbnRvIHNlcV9maWxlDQogICogQGZlbmNlOiB0aGUgNmZlbmNlIHRvIGRlc2NyaWJlDQpk
aWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaCBiL2luY2x1ZGUvbGludXgvZG1h
LWZlbmNlLmgNCmluZGV4IDc3NWNkYzBiNGYyNC4uZjMzNGUzN2U1MmJjIDEwMDY0NA0KLS0tIGEv
aW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaA0KKysrIGIvaW5jbHVkZS9saW51eC9kbWEtZmVuY2Uu
aA0KQEAgLTI1Nyw2ICsyNTcsMjMgQEAgc3RydWN0IGRtYV9mZW5jZV9vcHMgew0KIAkgKi8NCiAJ
dm9pZCAoKnRpbWVsaW5lX3ZhbHVlX3N0cikoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsDQogCQkJ
CSAgIGNoYXIgKnN0ciwgaW50IHNpemUpOw0KKw0KKwkvKioNCisJICogQHNldF9kZWFkbGluZToN
CisJICoNCisJICogQ2FsbGJhY2sgdG8gYWxsb3cgYSBmZW5jZSB3YWl0ZXIgdG8gaW5mb3JtIHRo
ZSBmZW5jZSBzaWduYWxlciBvZg0KKwkgKiBhbiB1cGNvbWluZyBkZWFkbGluZSwgc3VjaCBhcyB2
YmxhbmssIGJ5IHdoaWNoIHBvaW50IHRoZSB3YWl0ZXINCisJICogd291bGQgcHJlZmVyIHRoZSBm
ZW5jZSB0byBiZSBzaWduYWxlZCBieS4gIFRoaXMgaXMgaW50ZW5kZWQgdG8NCisJICogZ2l2ZSBm
ZWVkYmFjayB0byB0aGUgZmVuY2Ugc2lnbmFsZXIgdG8gYWlkIGluIHBvd2VyIG1hbmFnZW1lbnQN
CisJICogZGVjaXNpb25zLCBzdWNoIGFzIGJvb3N0aW5nIEdQVSBmcmVxdWVuY3kuDQorCSAqDQor
CSAqIFRoaXMgaXMgY2FsbGVkIHdpdGhvdXQgJmRtYV9mZW5jZS5sb2NrIGhlbGQsIGl0IGNhbiBi
ZSBjYWxsZWQNCisJICogbXVsdGlwbGUgdGltZXMgYW5kIGZyb20gYW55IGNvbnRleHQuICBMb2Nr
aW5nIGlzIHVwIHRvIHRoZSBjYWxsZWUNCisJICogaWYgaXQgaGFzIHNvbWUgc3RhdGUgdG8gbWFu
YWdlLg0KKwkgKg0KKwkgKiBUaGlzIGNhbGxiYWNrIGlzIG9wdGlvbmFsLg0KKwkgKi8NCisJdm9p
ZCAoKnNldF9kZWFkbGluZSkoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsIGt0aW1lX3QgZGVhZGxp
bmUpOw0KIH07DQogDQogdm9pZCBkbWFfZmVuY2VfaW5pdChzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5j
ZSwgY29uc3Qgc3RydWN0IGRtYV9mZW5jZV9vcHMgKm9wcywNCkBAIC01ODMsNiArNjAwLDggQEAg
c3RhdGljIGlubGluZSBzaWduZWQgbG9uZyBkbWFfZmVuY2Vfd2FpdChzdHJ1Y3QgZG1hX2ZlbmNl
ICpmZW5jZSwgYm9vbCBpbnRyKQ0KIAlyZXR1cm4gcmV0IDwgMCA/IHJldCA6IDA7DQogfQ0KIA0K
K3ZvaWQgZG1hX2ZlbmNlX3NldF9kZWFkbGluZShzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwga3Rp
bWVfdCBkZWFkbGluZSk7DQorDQogc3RydWN0IGRtYV9mZW5jZSAqZG1hX2ZlbmNlX2dldF9zdHVi
KHZvaWQpOw0KIHN0cnVjdCBkbWFfZmVuY2UgKmRtYV9mZW5jZV9hbGxvY2F0ZV9wcml2YXRlX3N0
dWIodm9pZCk7DQogdTY0IGRtYV9mZW5jZV9jb250ZXh0X2FsbG9jKHVuc2lnbmVkIG51bSk7DQot
LSANCjIuMzkuMQ0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxl
YXZlQGxpc3RzLmxpbmFyby5vcmcK
