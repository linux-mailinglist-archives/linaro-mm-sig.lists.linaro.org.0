Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 12C3EAC173D
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 23 May 2025 01:06:11 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2163E455E9
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 22 May 2025 23:06:10 +0000 (UTC)
Received: from mail-pj1-f73.google.com (mail-pj1-f73.google.com [209.85.216.73])
	by lists.linaro.org (Postfix) with ESMTPS id 5FCF5446DB
	for <linaro-mm-sig@lists.linaro.org>; Thu, 22 May 2025 23:04:48 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b="SpBnp/b8";
	spf=pass (lists.linaro.org: domain of 3j60vaAkKDfAlbeWjUaWjYggYdW.UgedafSjg-ee-kaYdaklk.dafSjg.gjY@flex--tjmercier.bounces.google.com designates 209.85.216.73 as permitted sender) smtp.mailfrom=3j60vaAkKDfAlbeWjUaWjYggYdW.UgedafSjg-ee-kaYdaklk.dafSjg.gjY@flex--tjmercier.bounces.google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-pj1-f73.google.com with SMTP id 98e67ed59e1d1-30e895056f0so9111115a91.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 22 May 2025 16:04:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1747955087; x=1748559887; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Sjvt2FSndoyzHpiTi00fqP3aNPbtMl1ng2ZPdHNNLQk=;
        b=SpBnp/b8xHu/Zdlg5fOxALg9J2Jl1HEIsMZDsPEkMXHV3io9KbudHdzZ6kAgnkV62i
         GV9Wa6yuBZiF9ujPl/ouas/jXhX/VNoNxp0Rl4aGIAZsb9VpLnr+KxhnnA5cDJ0thY54
         3B+asvZMoE2KyJzVM1N1D9fZsiSfHq9bmJygqnPHtF+1pOZWrNfgR/SwUAqwm/2Dscuz
         poKzmIcAqHDfwwlM6DaamG68rzLVunxaUFfzy7OdgA1x69PJd/qyt1dhusGoo3dxxWyU
         N2dAzxCgxO8pok90K3IQ4dQCVUfP93E5+zDjGIEk4/ddY9nSNaWuZ4aInPh/RX3Kg01K
         6cDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747955087; x=1748559887;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Sjvt2FSndoyzHpiTi00fqP3aNPbtMl1ng2ZPdHNNLQk=;
        b=Q/6YJVVmEiJ3nN7eIX6iOehzh5UER6qB22BPbrMVCu7gSmRTCN2GphRcu3OV4nNJfT
         QwO27is8y2MRwlJ/XbXRnWVLBy8LGTz0XvfgUEmLHWBpF9mjnO8LolPLbL4GlWJjNm2l
         2NNn8kCXG/fRVrTT0fzSgFapj78NlxpGsuNVxIv2QUwhJFmLCVlyYT9vByMJs7j2Opim
         9idtSOHF7/qP7ScltOL8gbIyzG/hdKFV6D1dG860FTUn+FA63f0eXJWKOghCaoaLmpPb
         FmuPYc3YxjO34LTouNisNMcljVaX6h5Q/jEzeqGOiSh/gWNaebg49vG/aeeehwVS99Yf
         QX5Q==
X-Forwarded-Encrypted: i=1; AJvYcCVY6RogHZqNgKViaGqNfMhawXA19g5uVjOirQTD6KsS+oAipxhf+4s9fpRF0ocZiaA3ZpVpThKucpyMvMKq@lists.linaro.org
X-Gm-Message-State: AOJu0YwfNAMj1NCAnN7dXutUF2dJMRL/17s31uw5WCkNqjwv9VlJ5be9
	tOzRNTD77cHZN+AR98gCrvDPXLUDYNtEG9fvgcEc8zDf6FMD0yyUm8wFJrDoMnp4/njG9iIt/qr
	2CuwJw5rJZreeEE4PZQ==
X-Google-Smtp-Source: AGHT+IGmBEEC3D+iQhUBmXN1VONTwNdgdzLmg2mtljqXxgk37nf0oQytjH+Iy15NdK+asUPGlaAXITDgBdNduEE=
X-Received: from pjur12.prod.google.com ([2002:a17:90a:d40c:b0:2ff:4be0:c675])
 (user=tjmercier job=prod-delivery.src-stubby-dispatcher) by
 2002:a17:90b:1e01:b0:30c:540b:99e with SMTP id 98e67ed59e1d1-310e96cbff2mr1317193a91.13.1747955087546;
 Thu, 22 May 2025 16:04:47 -0700 (PDT)
Date: Thu, 22 May 2025 23:04:29 +0000
In-Reply-To: <20250522230429.941193-1-tjmercier@google.com>
Mime-Version: 1.0
References: <20250522230429.941193-1-tjmercier@google.com>
X-Mailer: git-send-email 2.49.0.1151.ga128411c76-goog
Message-ID: <20250522230429.941193-6-tjmercier@google.com>
From: "T.J. Mercier" <tjmercier@google.com>
To: sumit.semwal@linaro.org, christian.koenig@amd.com, ast@kernel.org,
	daniel@iogearbox.net, andrii@kernel.org, martin.lau@linux.dev,
	skhan@linuxfoundation.org, alexei.starovoitov@gmail.com
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spamd-Result: default: False [-4.80 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	FORGED_SENDER(0.30)[tjmercier@google.com,3j60vaAkKDfAlbeWjUaWjYggYdW.UgedafSjg-ee-kaYdaklk.dafSjg.gjY@flex--tjmercier.bounces.google.com];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.216.73:from];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[linaro.org,amd.com,kernel.org,iogearbox.net,linux.dev,linuxfoundation.org,gmail.com];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	DNSWL_BLOCKED(0.00)[209.85.216.73:from];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tjmercier@google.com,3j60vaAkKDfAlbeWjUaWjYggYdW.UgedafSjg-ee-kaYdaklk.dafSjg.gjY@flex--tjmercier.bounces.google.com];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,google.com,ffwll.ch,gmail.com,linux.dev,kernel.org,fomichev.me,fb.com];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TAGGED_RCPT(0.00)[];
	DKIM_TRACE(0.00)[google.com:+];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 5FCF5446DB
X-Spamd-Bar: ----
Message-ID-Hash: OH3V5YKFIEOLVX227AWV5KWLHX7G3MXS
X-Message-ID-Hash: OH3V5YKFIEOLVX227AWV5KWLHX7G3MXS
X-MailFrom: 3j60vaAkKDfAlbeWjUaWjYggYdW.UgedafSjg-ee-kaYdaklk.dafSjg.gjY@flex--tjmercier.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, bpf@vger.kernel.org, linux-kselftest@vger.kernel.org, android-mm@google.com, simona@ffwll.ch, eddyz87@gmail.com, yonghong.song@linux.dev, john.fastabend@gmail.com, kpsingh@kernel.org, sdf@fomichev.me, jolsa@kernel.org, mykolal@fb.com, shuah@kernel.org, song@kernel.org, "T.J. Mercier" <tjmercier@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH bpf-next v7 5/5] selftests/bpf: Add test for open coded dmabuf_iter
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OH3V5YKFIEOLVX227AWV5KWLHX7G3MXS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VXNlIHRoZSBzYW1lIHRlc3QgYnVmZmVycyBhcyB0aGUgdHJhZGl0aW9uYWwgaXRlcmF0b3IgYW5k
IGEgbmV3IEJQRiBtYXANCnRvIHZlcmlmeSB0aGUgdGVzdCBidWZmZXJzIGNhbiBiZSBmb3VuZCB3
aXRoIHRoZSBvcGVuIGNvZGVkIGRtYWJ1Zg0KaXRlcmF0b3IuDQoNClNpZ25lZC1vZmYtYnk6IFQu
Si4gTWVyY2llciA8dGptZXJjaWVyQGdvb2dsZS5jb20+DQpBY2tlZC1ieTogQ2hyaXN0aWFuIEvD
tm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KQWNrZWQtYnk6IFNvbmcgTGl1IDxzb25n
QGtlcm5lbC5vcmc+DQotLS0NCiAuLi4vdGVzdGluZy9zZWxmdGVzdHMvYnBmL2JwZl9leHBlcmlt
ZW50YWwuaCAgfCAgNSArKw0KIC4uLi9zZWxmdGVzdHMvYnBmL3Byb2dfdGVzdHMvZG1hYnVmX2l0
ZXIuYyAgICB8IDQxICsrKysrKysrKysrKysrKysNCiAuLi4vdGVzdGluZy9zZWxmdGVzdHMvYnBm
L3Byb2dzL2RtYWJ1Zl9pdGVyLmMgfCA0OCArKysrKysrKysrKysrKysrKysrDQogMyBmaWxlcyBj
aGFuZ2VkLCA5NCBpbnNlcnRpb25zKCspDQoNCmRpZmYgLS1naXQgYS90b29scy90ZXN0aW5nL3Nl
bGZ0ZXN0cy9icGYvYnBmX2V4cGVyaW1lbnRhbC5oIGIvdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMv
YnBmL2JwZl9leHBlcmltZW50YWwuaA0KaW5kZXggNjUzNWM4YWUzYzQ2Li41ZTUxMmExZDA5ZDEg
MTAwNjQ0DQotLS0gYS90b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYvYnBmX2V4cGVyaW1lbnRh
bC5oDQorKysgYi90b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYvYnBmX2V4cGVyaW1lbnRhbC5o
DQpAQCAtNTkxLDQgKzU5MSw5IEBAIGV4dGVybiBpbnQgYnBmX2l0ZXJfa21lbV9jYWNoZV9uZXco
c3RydWN0IGJwZl9pdGVyX2ttZW1fY2FjaGUgKml0KSBfX3dlYWsgX19rc3ltDQogZXh0ZXJuIHN0
cnVjdCBrbWVtX2NhY2hlICpicGZfaXRlcl9rbWVtX2NhY2hlX25leHQoc3RydWN0IGJwZl9pdGVy
X2ttZW1fY2FjaGUgKml0KSBfX3dlYWsgX19rc3ltOw0KIGV4dGVybiB2b2lkIGJwZl9pdGVyX2tt
ZW1fY2FjaGVfZGVzdHJveShzdHJ1Y3QgYnBmX2l0ZXJfa21lbV9jYWNoZSAqaXQpIF9fd2VhayBf
X2tzeW07DQogDQorc3RydWN0IGJwZl9pdGVyX2RtYWJ1ZjsNCitleHRlcm4gaW50IGJwZl9pdGVy
X2RtYWJ1Zl9uZXcoc3RydWN0IGJwZl9pdGVyX2RtYWJ1ZiAqaXQpIF9fd2VhayBfX2tzeW07DQor
ZXh0ZXJuIHN0cnVjdCBkbWFfYnVmICpicGZfaXRlcl9kbWFidWZfbmV4dChzdHJ1Y3QgYnBmX2l0
ZXJfZG1hYnVmICppdCkgX193ZWFrIF9fa3N5bTsNCitleHRlcm4gdm9pZCBicGZfaXRlcl9kbWFi
dWZfZGVzdHJveShzdHJ1Y3QgYnBmX2l0ZXJfZG1hYnVmICppdCkgX193ZWFrIF9fa3N5bTsNCisN
CiAjZW5kaWYNCmRpZmYgLS1naXQgYS90b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYvcHJvZ190
ZXN0cy9kbWFidWZfaXRlci5jIGIvdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYnBmL3Byb2dfdGVz
dHMvZG1hYnVmX2l0ZXIuYw0KaW5kZXggZGM3NDBiZDBlMmJkLi42YzJiMGMzZGJjZDggMTAwNjQ0
DQotLS0gYS90b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYvcHJvZ190ZXN0cy9kbWFidWZfaXRl
ci5jDQorKysgYi90b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYvcHJvZ190ZXN0cy9kbWFidWZf
aXRlci5jDQpAQCAtMjE5LDE0ICsyMTksNTIgQEAgc3RhdGljIHZvaWQgc3VidGVzdF9kbWFidWZf
aXRlcl9jaGVja19kZWZhdWx0X2l0ZXIoc3RydWN0IGRtYWJ1Zl9pdGVyICpza2VsKQ0KIAljbG9z
ZShpdGVyX2ZkKTsNCiB9DQogDQorc3RhdGljIHZvaWQgc3VidGVzdF9kbWFidWZfaXRlcl9jaGVj
a19vcGVuX2NvZGVkKHN0cnVjdCBkbWFidWZfaXRlciAqc2tlbCwgaW50IG1hcF9mZCkNCit7DQor
CUxJQkJQRl9PUFRTKGJwZl90ZXN0X3J1bl9vcHRzLCB0b3B0cyk7DQorCWNoYXIga2V5W0RNQV9C
VUZfTkFNRV9MRU5dOw0KKwlpbnQgZXJyLCBmZDsNCisJYm9vbCBmb3VuZDsNCisNCisJLyogTm8g
bmVlZCB0byBhdHRhY2ggaXQsIGp1c3QgcnVuIGl0IGRpcmVjdGx5ICovDQorCWZkID0gYnBmX3By
b2dyYW1fX2ZkKHNrZWwtPnByb2dzLml0ZXJfZG1hYnVmX2Zvcl9lYWNoKTsNCisNCisJZXJyID0g
YnBmX3Byb2dfdGVzdF9ydW5fb3B0cyhmZCwgJnRvcHRzKTsNCisJaWYgKCFBU1NFUlRfT0soZXJy
LCAidGVzdF9ydW5fb3B0cyBlcnIiKSkNCisJCXJldHVybjsNCisJaWYgKCFBU1NFUlRfT0sodG9w
dHMucmV0dmFsLCAidGVzdF9ydW5fb3B0cyByZXR2YWwiKSkNCisJCXJldHVybjsNCisNCisJaWYg
KCFBU1NFUlRfT0soYnBmX21hcF9nZXRfbmV4dF9rZXkobWFwX2ZkLCBOVUxMLCBrZXkpLCAiZ2V0
IG5leHQga2V5IikpDQorCQlyZXR1cm47DQorDQorCWRvIHsNCisJCUFTU0VSVF9PSyhicGZfbWFw
X2xvb2t1cF9lbGVtKG1hcF9mZCwga2V5LCAmZm91bmQpLCAibG9va3VwIik7DQorCQlBU1NFUlRf
VFJVRShmb3VuZCwgImZvdW5kIHRlc3QgYnVmZmVyIik7DQorCX0gd2hpbGUgKGJwZl9tYXBfZ2V0
X25leHRfa2V5KG1hcF9mZCwga2V5LCBrZXkpKTsNCit9DQorDQogdm9pZCB0ZXN0X2RtYWJ1Zl9p
dGVyKHZvaWQpDQogew0KIAlzdHJ1Y3QgZG1hYnVmX2l0ZXIgKnNrZWwgPSBOVUxMOw0KKwlpbnQg
bWFwX2ZkOw0KKwljb25zdCBib29sIGYgPSBmYWxzZTsNCiANCiAJc2tlbCA9IGRtYWJ1Zl9pdGVy
X19vcGVuX2FuZF9sb2FkKCk7DQogCWlmICghQVNTRVJUX09LX1BUUihza2VsLCAiZG1hYnVmX2l0
ZXJfX29wZW5fYW5kX2xvYWQiKSkNCiAJCXJldHVybjsNCiANCisJbWFwX2ZkID0gYnBmX21hcF9f
ZmQoc2tlbC0+bWFwcy50ZXN0YnVmX2hhc2gpOw0KKwlpZiAoIUFTU0VSVF9PS19GRChtYXBfZmQs
ICJtYXBfZmQiKSkNCisJCWdvdG8gZGVzdHJveV9za2VsOw0KKw0KKwlpZiAoIUFTU0VSVF9PSyhi
cGZfbWFwX3VwZGF0ZV9lbGVtKG1hcF9mZCwgdWRtYWJ1Zl90ZXN0X2J1ZmZlcl9uYW1lLCAmZiwg
QlBGX0FOWSksDQorCQkgICAgICAgImluc2VydCB1ZG1hYnVmIikpDQorCQlnb3RvIGRlc3Ryb3lf
c2tlbDsNCisJaWYgKCFBU1NFUlRfT0soYnBmX21hcF91cGRhdGVfZWxlbShtYXBfZmQsIHN5c2hl
YXBfdGVzdF9idWZmZXJfbmFtZSwgJmYsIEJQRl9BTlkpLA0KKwkJICAgICAgICJpbnNlcnQgc3lz
aGVhcCBidWZmZXIiKSkNCisJCWdvdG8gZGVzdHJveV9za2VsOw0KKw0KIAlpZiAoIUFTU0VSVF9P
SyhjcmVhdGVfdGVzdF9idWZmZXJzKCksICJjcmVhdGVfdGVzdF9idWZmZXJzIikpDQogCQlnb3Rv
IGRlc3Ryb3k7DQogDQpAQCAtMjM3LDggKzI3NSwxMSBAQCB2b2lkIHRlc3RfZG1hYnVmX2l0ZXIo
dm9pZCkNCiAJCXN1YnRlc3RfZG1hYnVmX2l0ZXJfY2hlY2tfbm9faW5maW5pdGVfcmVhZHMoc2tl
bCk7DQogCWlmICh0ZXN0X19zdGFydF9zdWJ0ZXN0KCJkZWZhdWx0X2l0ZXIiKSkNCiAJCXN1YnRl
c3RfZG1hYnVmX2l0ZXJfY2hlY2tfZGVmYXVsdF9pdGVyKHNrZWwpOw0KKwlpZiAodGVzdF9fc3Rh
cnRfc3VidGVzdCgib3Blbl9jb2RlZCIpKQ0KKwkJc3VidGVzdF9kbWFidWZfaXRlcl9jaGVja19v
cGVuX2NvZGVkKHNrZWwsIG1hcF9mZCk7DQogDQogZGVzdHJveToNCiAJZGVzdHJveV90ZXN0X2J1
ZmZlcnMoKTsNCitkZXN0cm95X3NrZWw6DQogCWRtYWJ1Zl9pdGVyX19kZXN0cm95KHNrZWwpOw0K
IH0NCmRpZmYgLS1naXQgYS90b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYvcHJvZ3MvZG1hYnVm
X2l0ZXIuYyBiL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9ncy9kbWFidWZfaXRlci5j
DQppbmRleCBlNTNkNzY0NmQwN2EuLjEzY2RiMTFmZGViMiAxMDA2NDQNCi0tLSBhL3Rvb2xzL3Rl
c3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9ncy9kbWFidWZfaXRlci5jDQorKysgYi90b29scy90ZXN0
aW5nL3NlbGZ0ZXN0cy9icGYvcHJvZ3MvZG1hYnVmX2l0ZXIuYw0KQEAgLTksNiArOSwxMyBAQA0K
IA0KIGNoYXIgX2xpY2Vuc2VbXSBTRUMoImxpY2Vuc2UiKSA9ICJHUEwiOw0KIA0KK3N0cnVjdCB7
DQorCV9fdWludCh0eXBlLCBCUEZfTUFQX1RZUEVfSEFTSCk7DQorCV9fdWludChrZXlfc2l6ZSwg
RE1BX0JVRl9OQU1FX0xFTik7DQorCV9fdHlwZSh2YWx1ZSwgYm9vbCk7DQorCV9fdWludChtYXhf
ZW50cmllcywgNSk7DQorfSB0ZXN0YnVmX2hhc2ggU0VDKCIubWFwcyIpOw0KKw0KIC8qDQogICog
RmllbGRzIG91dHB1dCBieSB0aGlzIGl0ZXJhdG9yIGFyZSBkZWxpbWl0ZWQgYnkgbmV3bGluZXMu
IENvbnZlcnQgYW55DQogICogbmV3bGluZXMgaW4gdXNlci1wcm92aWRlZCBwcmludGVkIHN0cmlu
Z3MgdG8gc3BhY2VzLg0KQEAgLTUxLDMgKzU4LDQ0IEBAIGludCBkbWFidWZfY29sbGVjdG9yKHN0
cnVjdCBicGZfaXRlcl9fZG1hYnVmICpjdHgpDQogCUJQRl9TRVFfUFJJTlRGKHNlcSwgIiVsdVxu
JWxsdVxuJXNcbiVzXG4iLCBpbm9kZSwgc2l6ZSwgbmFtZSwgZXhwb3J0ZXIpOw0KIAlyZXR1cm4g
MDsNCiB9DQorDQorU0VDKCJzeXNjYWxsIikNCitpbnQgaXRlcl9kbWFidWZfZm9yX2VhY2goY29u
c3Qgdm9pZCAqY3R4KQ0KK3sNCisJc3RydWN0IGRtYV9idWYgKmQ7DQorDQorCWJwZl9mb3JfZWFj
aChkbWFidWYsIGQpIHsNCisJCWNoYXIgbmFtZVtETUFfQlVGX05BTUVfTEVOXTsNCisJCWNvbnN0
IGNoYXIgKnBuYW1lOw0KKwkJYm9vbCAqZm91bmQ7DQorCQlsb25nIGxlbjsNCisJCWludCBpOw0K
Kw0KKwkJaWYgKGJwZl9jb3JlX3JlYWQoJnBuYW1lLCBzaXplb2YocG5hbWUpLCAmZC0+bmFtZSkp
DQorCQkJcmV0dXJuIDE7DQorDQorCQkvKiBCdWZmZXJzIGFyZSBub3QgcmVxdWlyZWQgdG8gYmUg
bmFtZWQgKi8NCisJCWlmICghcG5hbWUpDQorCQkJY29udGludWU7DQorDQorCQlsZW4gPSBicGZf
cHJvYmVfcmVhZF9rZXJuZWxfc3RyKG5hbWUsIHNpemVvZihuYW1lKSwgcG5hbWUpOw0KKwkJaWYg
KGxlbiA8IDApDQorCQkJcmV0dXJuIDE7DQorDQorCQkvKg0KKwkJICogVGhlIGVudGlyZSBuYW1l
IGJ1ZmZlciBpcyB1c2VkIGFzIGEgbWFwIGtleS4NCisJCSAqIFplcm9pemUgYW55IHVuaW5pdGlh
bGl6ZWQgdHJhaWxpbmcgYnl0ZXMgYWZ0ZXIgdGhlIE5VTC4NCisJCSAqLw0KKwkJYnBmX2Zvcihp
LCBsZW4sIERNQV9CVUZfTkFNRV9MRU4pDQorCQkJbmFtZVtpXSA9IDA7DQorDQorCQlmb3VuZCA9
IGJwZl9tYXBfbG9va3VwX2VsZW0oJnRlc3RidWZfaGFzaCwgbmFtZSk7DQorCQlpZiAoZm91bmQp
IHsNCisJCQlib29sIHQgPSB0cnVlOw0KKw0KKwkJCWJwZl9tYXBfdXBkYXRlX2VsZW0oJnRlc3Ri
dWZfaGFzaCwgbmFtZSwgJnQsIEJQRl9FWElTVCk7DQorCQl9DQorCX0NCisNCisJcmV0dXJuIDA7
DQorfQ0KLS0gDQoyLjQ5LjAuMTE1MS5nYTEyODQxMWM3Ni1nb29nDQoNCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBs
aXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5k
IGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
