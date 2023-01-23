Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 48C09677B22
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 23 Jan 2023 13:38:38 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5167F4437A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 23 Jan 2023 12:38:37 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	by lists.linaro.org (Postfix) with ESMTPS id DCAFF4437B
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Jan 2023 12:38:02 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b="PRp+K8o/";
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.221.46 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wr1-f46.google.com with SMTP id r2so10654294wrv.7
        for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Jan 2023 04:38:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VXN5GkMQp7hu9CGhDS6OQxzJfUxb9ZcG/2PxTv2bgTk=;
        b=PRp+K8o/qTb7x4Y1T4vYADVymgsFKRTiEQUeIw441b4+7ksI/PO8lCH5nm/rIRROsn
         4iDMmlJJZNdtKrxH21SPVt6hGd52qj7s5OsiIVfSlWaUeOpvfxE4TU3jF5kUaDJ+QCTx
         bQJgw6nfDkGfN0OoxfEebu0UfsuBEFMbcnTwXKOtuClRamGYCZr34BG8Iq+FuWPnorcK
         HxURxh6w1av0zX2Ly+9wrUaVN5sp+1l5/rl0FNBqrV9zbWJSc1njgdpi+lTy9NDlIrq+
         aHFWcg9XG1+lAOOI1AivWVVwObRowL0aF72L3uePVBGdz+XMfNrRQ+KTbE97l1W5tm67
         VrYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VXN5GkMQp7hu9CGhDS6OQxzJfUxb9ZcG/2PxTv2bgTk=;
        b=qBTEN3gNL0TZYhFhNQoSrN0q/1SP/yCeEammdWUWRNDQQi/RJfBXa5R039GA7Mga9e
         LD525dLWHbfzZPcxH1h31eNj7F4wAykiasRRYkQlyx2A1XEZaJBH9PREocH+0JTbqvSL
         C/41xCV2+h9sJ9b2lBCAwHsto8eRYTtIxn24h2a2MGvex3sVBJ9M4CJXKqZhvoNqK7Hu
         aMdqgp382uC6pPjkkiuP8Laqd8hkv8JtsNtHdbDaEV+m/yO5dTRFBG97Q5fZ20p6BVXr
         zfv8LtDxArsCr2bpBVTJX+mUg3fAfxRL6BmThTTqJ2+30WwbIdpurqVZUyvUeVbCLtgX
         KsPQ==
X-Gm-Message-State: AFqh2koGnQn+MVLwdhB+7R905+LXNTP8678Omh+duab1FCo4WVudLa2z
	yp0CzRKtyVOZefRrPmrL19w=
X-Google-Smtp-Source: AMrXdXvYyLMHWTRnrKqjQOgBOftzo1qbhvRaLIe14a7zX93YHo/yUYT9qtTwOY/d9I30A1VU7c/EMA==
X-Received: by 2002:a05:6000:a03:b0:2bd:e036:6b1a with SMTP id co3-20020a0560000a0300b002bde0366b1amr24265990wrb.64.1674477481885;
        Mon, 23 Jan 2023 04:38:01 -0800 (PST)
Received: from able.fritz.box (p5b0ea2e7.dip0.t-ipconnect.de. [91.14.162.231])
        by smtp.gmail.com with ESMTPSA id k3-20020a5d6e83000000b00289bdda07b7sm4284510wrz.92.2023.01.23.04.38.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jan 2023 04:38:01 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: l.stach@pengutronix.de,
	nicolas@ndufresne.ca,
	ppaalanen@gmail.com,
	sumit.semwal@linaro.org,
	daniel@ffwll.ch,
	robdclark@gmail.com,
	tfiga@chromium.org,
	sebastian.wick@redhat.com,
	hverkuil@xs4all.nl,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	linux-media@vger.kernel.org,
	benjamin.gaignard@collabora.com,
	lmark@codeaurora.org,
	labbott@redhat.com,
	Brian.Starkey@arm.com,
	jstultz@google.com,
	laurent.pinchart@ideasonboard.com,
	mchehab@kernel.org
Date: Mon, 23 Jan 2023 13:37:55 +0100
Message-Id: <20230123123756.401692-2-christian.koenig@amd.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230123123756.401692-1-christian.koenig@amd.com>
References: <20230123123756.401692-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: DCAFF4437B
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-0.50)[91.14.162.231:received];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-0.950];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.221.46:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_NONE(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.221.46:from];
	FREEMAIL_TO(0.00)[pengutronix.de,ndufresne.ca,gmail.com,linaro.org,ffwll.ch,chromium.org,redhat.com,xs4all.nl,lists.freedesktop.org,lists.linaro.org,vger.kernel.org,collabora.com,codeaurora.org,arm.com,google.com,ideasonboard.com,kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: 657F4P4PTNF5YES4HJ4JMB6GRRIMVJST
X-Message-ID-Hash: 657F4P4PTNF5YES4HJ4JMB6GRRIMVJST
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 1/2] dma-heap: add device link and unlink functions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/657F4P4PTNF5YES4HJ4JMB6GRRIMVJST/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhpcyBhbGxvd3MgZGV2aWNlIGRyaXZlcnMgdG8gc3BlY2lmeSBhIERNQS1oZWFwIHdoZXJlIHRo
ZXkgd2FudCB0aGVpcg0KYnVmZmVycyB0byBiZSBhbGxvY2F0ZWQgZnJvbS4gVGhpcyBpbmZvcm1h
dGlvbiBpcyB0aGVuIGV4cG9zZWQgYXMNCnN5c2ZzIGxpbmsgYmV0d2VlbiB0aGUgZGV2aWNlIGFu
ZCB0aGUgRE1BLWhlYXAuDQoNClVzZWZ1bCBmb3IgdXNlcnNwYWNlIHdoZW4gaW4gbmVlZCB0byBk
ZWNpZGUgZnJvbSB3aGljaCBwcm92aWRlciB0bw0KYWxsb2NhdGUgYSBidWZmZXIuDQoNClNpZ25l
ZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCi0t
LQ0KIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtaGVhcC5jIHwgNDEgKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrLS0tLS0tLS0NCiBpbmNsdWRlL2xpbnV4L2RtYS1oZWFwLmggICB8IDM1ICsrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrDQogMiBmaWxlcyBjaGFuZ2VkLCA2OCBpbnNlcnRp
b25zKCspLCA4IGRlbGV0aW9ucygtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2Rt
YS1oZWFwLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWhlYXAuYw0KaW5kZXggYzllNDFlOGE5ZTI3
Li4wZjdjZjcxM2MyMmYgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWhlYXAuYw0K
KysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1oZWFwLmMNCkBAIC0zMSw2ICszMSw3IEBADQogICog
QGhlYXBfZGV2dAkJaGVhcCBkZXZpY2Ugbm9kZQ0KICAqIEBsaXN0CQlsaXN0IGhlYWQgY29ubmVj
dGluZyB0byBsaXN0IG9mIGhlYXBzDQogICogQGhlYXBfY2RldgkJaGVhcCBjaGFyIGRldmljZQ0K
KyAqIEBkZXY6CQloZWFwIGRldmljZSBpbiBzeXNmcw0KICAqDQogICogUmVwcmVzZW50cyBhIGhl
YXAgb2YgbWVtb3J5IGZyb20gd2hpY2ggYnVmZmVycyBjYW4gYmUgbWFkZS4NCiAgKi8NCkBAIC00
MSw2ICs0Miw3IEBAIHN0cnVjdCBkbWFfaGVhcCB7DQogCWRldl90IGhlYXBfZGV2dDsNCiAJc3Ry
dWN0IGxpc3RfaGVhZCBsaXN0Ow0KIAlzdHJ1Y3QgY2RldiBoZWFwX2NkZXY7DQorCXN0cnVjdCBk
ZXZpY2UgKmRldjsNCiB9Ow0KIA0KIHN0YXRpYyBMSVNUX0hFQUQoaGVhcF9saXN0KTsNCkBAIC00
OSw2ICs1MSwzMyBAQCBzdGF0aWMgZGV2X3QgZG1hX2hlYXBfZGV2dDsNCiBzdGF0aWMgc3RydWN0
IGNsYXNzICpkbWFfaGVhcF9jbGFzczsNCiBzdGF0aWMgREVGSU5FX1hBUlJBWV9BTExPQyhkbWFf
aGVhcF9taW5vcnMpOw0KIA0KK2ludCBkbWFfaGVhcF9jcmVhdGVfZGV2aWNlX2xpbmsoc3RydWN0
IGRldmljZSAqZGV2LCBjb25zdCBjaGFyICpoZWFwKQ0KK3sNCisJc3RydWN0IGRtYV9oZWFwICpo
Ow0KKw0KKwkvKiBjaGVjayB0aGUgbmFtZSBpcyB2YWxpZCAqLw0KKwltdXRleF9sb2NrKCZoZWFw
X2xpc3RfbG9jayk7DQorCWxpc3RfZm9yX2VhY2hfZW50cnkoaCwgJmhlYXBfbGlzdCwgbGlzdCkg
ew0KKwkJaWYgKCFzdHJjbXAoaC0+bmFtZSwgaGVhcCkpDQorCQkJYnJlYWs7DQorCX0NCisJbXV0
ZXhfdW5sb2NrKCZoZWFwX2xpc3RfbG9jayk7DQorDQorCWlmIChsaXN0X2VudHJ5X2lzX2hlYWQo
aCwgJmhlYXBfbGlzdCwgbGlzdCkpIHsNCisJCXByX2VycigiZG1hX2hlYXA6IExpbmsgdG8gaW52
YWxpZCBoZWFwIHJlcXVlc3RlZCAlc1xuIiwgaGVhcCk7DQorCQlyZXR1cm4gLUVJTlZBTDsNCisJ
fQ0KKw0KKwlyZXR1cm4gc3lzZnNfY3JlYXRlX2xpbmsoJmRldi0+a29iaiwgJmgtPmRldi0+a29i
aiwgREVWTkFNRSk7DQorfQ0KK0VYUE9SVF9TWU1CT0woZG1hX2hlYXBfY3JlYXRlX2RldmljZV9s
aW5rKTsNCisNCit2b2lkIGRtYV9oZWFwX3JlbW92ZV9kZXZpY2VfbGluayhzdHJ1Y3QgZGV2aWNl
ICpkZXYpDQorew0KKwlzeXNmc19yZW1vdmVfbGluaygmZGV2LT5rb2JqLCBERVZOQU1FKTsNCit9
DQorRVhQT1JUX1NZTUJPTChkbWFfaGVhcF9yZW1vdmVfZGV2aWNlX2xpbmspOw0KKw0KIHN0YXRp
YyBpbnQgZG1hX2hlYXBfYnVmZmVyX2FsbG9jKHN0cnVjdCBkbWFfaGVhcCAqaGVhcCwgc2l6ZV90
IGxlbiwNCiAJCQkJIHVuc2lnbmVkIGludCBmZF9mbGFncywNCiAJCQkJIHVuc2lnbmVkIGludCBo
ZWFwX2ZsYWdzKQ0KQEAgLTIxOSw3ICsyNDgsNiBAQCBjb25zdCBjaGFyICpkbWFfaGVhcF9nZXRf
bmFtZShzdHJ1Y3QgZG1hX2hlYXAgKmhlYXApDQogc3RydWN0IGRtYV9oZWFwICpkbWFfaGVhcF9h
ZGQoY29uc3Qgc3RydWN0IGRtYV9oZWFwX2V4cG9ydF9pbmZvICpleHBfaW5mbykNCiB7DQogCXN0
cnVjdCBkbWFfaGVhcCAqaGVhcCwgKmgsICplcnJfcmV0Ow0KLQlzdHJ1Y3QgZGV2aWNlICpkZXZf
cmV0Ow0KIAl1bnNpZ25lZCBpbnQgbWlub3I7DQogCWludCByZXQ7DQogDQpAQCAtMjYxLDE0ICsy
ODksMTEgQEAgc3RydWN0IGRtYV9oZWFwICpkbWFfaGVhcF9hZGQoY29uc3Qgc3RydWN0IGRtYV9o
ZWFwX2V4cG9ydF9pbmZvICpleHBfaW5mbykNCiAJCWdvdG8gZXJyMTsNCiAJfQ0KIA0KLQlkZXZf
cmV0ID0gZGV2aWNlX2NyZWF0ZShkbWFfaGVhcF9jbGFzcywNCi0JCQkJTlVMTCwNCi0JCQkJaGVh
cC0+aGVhcF9kZXZ0LA0KLQkJCQlOVUxMLA0KLQkJCQloZWFwLT5uYW1lKTsNCi0JaWYgKElTX0VS
UihkZXZfcmV0KSkgew0KKwloZWFwLT5kZXYgPSBkZXZpY2VfY3JlYXRlKGRtYV9oZWFwX2NsYXNz
LCBOVUxMLCBoZWFwLT5oZWFwX2RldnQsIE5VTEwsDQorCQkJCSAgaGVhcC0+bmFtZSk7DQorCWlm
IChJU19FUlIoaGVhcC0+ZGV2KSkgew0KIAkJcHJfZXJyKCJkbWFfaGVhcDogVW5hYmxlIHRvIGNy
ZWF0ZSBkZXZpY2VcbiIpOw0KLQkJZXJyX3JldCA9IEVSUl9DQVNUKGRldl9yZXQpOw0KKwkJZXJy
X3JldCA9IEVSUl9DQVNUKGhlYXAtPmRldik7DQogCQlnb3RvIGVycjI7DQogCX0NCiANCmRpZmYg
LS1naXQgYS9pbmNsdWRlL2xpbnV4L2RtYS1oZWFwLmggYi9pbmNsdWRlL2xpbnV4L2RtYS1oZWFw
LmgNCmluZGV4IDBjMDU1NjFjYWQ2ZS4uMDk3MDc2NzY2NDk2IDEwMDY0NA0KLS0tIGEvaW5jbHVk
ZS9saW51eC9kbWEtaGVhcC5oDQorKysgYi9pbmNsdWRlL2xpbnV4L2RtYS1oZWFwLmgNCkBAIC02
NSw0ICs2NSwzOSBAQCBjb25zdCBjaGFyICpkbWFfaGVhcF9nZXRfbmFtZShzdHJ1Y3QgZG1hX2hl
YXAgKmhlYXApOw0KICAqLw0KIHN0cnVjdCBkbWFfaGVhcCAqZG1hX2hlYXBfYWRkKGNvbnN0IHN0
cnVjdCBkbWFfaGVhcF9leHBvcnRfaW5mbyAqZXhwX2luZm8pOw0KIA0KKyNpZmRlZiBDT05GSUdf
RE1BQlVGX0hFQVBTDQorDQorLyoqDQorICogZG1hX2hlYXBfY3JlYXRlX2RldmljZV9saW5rKCkg
LSBhZGQgbGluayBiZXR3ZWVuIGRldmljZSBhbmQgaGVhcA0KKyAqIEBkZXY6IHRoZSBkZXZpY2Ug
d2hpY2ggc2hvdWxkIGJlIGxpbmtlZCB0byBhIGhlYXANCisgKiBAaGVhcDogbmFtZSBvZiB0aGUg
aGVhcCB0byBsaW5rIHRvDQorICoNCisgKiBBZGQgYSBzeXNmcyBsaW5rIGJldHdlZW4gYSBkZXZp
Y2UgYW5kIGEgRE1BLWhlYXAuIFRoaXMgbGluayBjYW4gdGhlbiBiZSB1c2VkDQorICogYnkgdXNl
cnNwYWNlIHRvIGZpZ3VyZSBvdXQgZnJvbSB3aGljaCBETUEtaGVhcCBhIGRldmljZSB3YW50cyBp
dCdzIGJ1ZmZlcnMNCisgKiB0byBiZSBhbGxvY2F0ZWQuDQorICovDQoraW50IGRtYV9oZWFwX2Ny
ZWF0ZV9kZXZpY2VfbGluayhzdHJ1Y3QgZGV2aWNlICpkZXYsIGNvbnN0IGNoYXIgKmhlYXApOw0K
Kw0KKy8qKg0KKyAqIGRtYV9oZWFwX3JlbW92ZV9kZXZpY2VfbGluaygpIC0gcmVtb3ZlIGxpbmsg
YmV0d2VlbiBkZXZpY2UgYW5kIGhlYXANCisgKiBAZGV2OiB0aGUgZGV2aWNlIHdoaWNoIHNob3Vs
ZCBiZSB1bmxpbmtlZA0KKyAqDQorICogUmVtb3ZlcyB0aGUgc3lzZnMgbGluayBiZXR3ZWVuIHRo
ZSBkZXZpY2UgYW5kIGl0J3MgRE1BLWhlYXAgYWdhaW4gd2hlbiBhDQorICogZHJpdmVyIGlzIHVu
bG9hZGVkLg0KKyAqLw0KK3ZvaWQgZG1hX2hlYXBfcmVtb3ZlX2RldmljZV9saW5rKHN0cnVjdCBk
ZXZpY2UgKmRldik7DQorDQorI2Vsc2UNCisNCitpbnQgZG1hX2hlYXBfY3JlYXRlX2RldmljZV9s
aW5rKHN0cnVjdCBkZXZpY2UgKmRldiwgY29uc3QgY2hhciAqaGVhcCkNCit7DQorCXJldHVybiAw
Ow0KK30NCisNCit2b2lkIGRtYV9oZWFwX3JlbW92ZV9kZXZpY2VfbGluayhzdHJ1Y3QgZGV2aWNl
ICpkZXYpDQorew0KK30NCisNCisjZW5kaWYNCisNCiAjZW5kaWYgLyogX0RNQV9IRUFQU19IICov
DQotLSANCjIuMzQuMQ0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2ln
LWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
