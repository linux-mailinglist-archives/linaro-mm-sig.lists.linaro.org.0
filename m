Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FD1869BC43
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 18 Feb 2023 22:16:29 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 80DA744242
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 18 Feb 2023 21:16:28 +0000 (UTC)
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	by lists.linaro.org (Postfix) with ESMTPS id 97A023F336
	for <linaro-mm-sig@lists.linaro.org>; Sat, 18 Feb 2023 21:15:50 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=ZkdbOU+W;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.214.180 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pl1-f180.google.com with SMTP id t15so1499471plg.6
        for <linaro-mm-sig@lists.linaro.org>; Sat, 18 Feb 2023 13:15:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+1OrC8Qn2ZJKlzQr5VPD0V+OBV4kyv6Pm4LEmbHRWBY=;
        b=ZkdbOU+WUTXbXuy+edMoJBjcaH2pmGSWOPbAWIOHb+1uil8B7cZRAXaxpt2UzBVglS
         K9D42mFhZUJcG+CpOfomRVhFsdfvtao4eWTFV3/+UwBd/316jEIHmEWPTlOa0RssKCj1
         q6+JqVhrNYTe37sHAGTzgDmWHe7IAo585bi5HTzHmLnbqpizohUqvGrmEN6//nmpjn+I
         tFz7J4QCJ2M+hzuOgu5IwJPfJ6OAxIQDVrn5ObNQd/YyMKOG3wF0TXHse6PkE5PFTOo/
         UCKE9AF4BrQl4QisNCpjzkr8PAcEaMAj8rLMQPzDN2Hyci+wm2KiAB2Nef7AnBgp3v2u
         IzjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+1OrC8Qn2ZJKlzQr5VPD0V+OBV4kyv6Pm4LEmbHRWBY=;
        b=mFBmlVPjgogqDnKCEG+TS3UjKykPlkdJ+Om0EY0n2+MGQWQFPQhYTEZgNjZuvWNmXF
         L8VJOfQz/tE8zqi4xctkiRljSUEHVZRMW5tjWk0NaGBbIaZX9UDVajO9r6vrHb7yAy6o
         OY9ohS9JjHg2iGysK71Ns/o3rZaFDoOThQQI0icqTKDL0hRI6piKaEHO9tysnzIxwZh+
         y47pD0x34QNx2dd22KfM2/23KlLtg0kQVKocx7RYtoac2F/ji5URSLImwtdELJIcbKLm
         Y8ElJVNMABxANbhuKk2s3uaS4875dlSIDux8o3t9BYmGgyHsxjNYFRBQPJGrgOZlTCAL
         7OYg==
X-Gm-Message-State: AO0yUKXHCdon74l3arr0OxijG69Neb/07R8xJuR7wYY9wWCthbdpoxyg
	ddiJxfYJ30yRYd19i5qf3fk=
X-Google-Smtp-Source: AK7set/oYuhKvXuo3/h/Qa5avadZ9tVCfGZN140IDlH5L063jOweVl04kKTFFu939dYcCEm0rB2r/Q==
X-Received: by 2002:a17:902:ec81:b0:199:26b1:17b3 with SMTP id x1-20020a170902ec8100b0019926b117b3mr610623plg.28.1676754949710;
        Sat, 18 Feb 2023 13:15:49 -0800 (PST)
Received: from localhost (c-73-67-135-195.hsd1.or.comcast.net. [73.67.135.195])
        by smtp.gmail.com with ESMTPSA id x1-20020a1709029a4100b0019a97a4324dsm5059856plv.5.2023.02.18.13.15.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Feb 2023 13:15:49 -0800 (PST)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Sat, 18 Feb 2023 13:15:44 -0800
Message-Id: <20230218211608.1630586-2-robdclark@gmail.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230218211608.1630586-1-robdclark@gmail.com>
References: <20230218211608.1630586-1-robdclark@gmail.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 97A023F336
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-1.00)[73.67.135.195:received,209.85.214.180:from];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.214.180:from];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_RCPT(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[17];
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
Message-ID-Hash: WNCVUCHNORQLIJCMFSSZ2SGXBJJUAI46
X-Message-ID-Hash: WNCVUCHNORQLIJCMFSSZ2SGXBJJUAI46
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: freedreno@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, =?UTF-8?q?Michel=20D=C3=A4nzer?= <michel@daenzer.net>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Alex Deucher <alexander.deucher@amd.com>, Pekka Paalanen <ppaalanen@gmail.com>, Simon Ser <contact@emersion.fr>, Rob Clark <robdclark@chromium.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, open list <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v4 01/14] dma-buf/dma-fence: Add deadline awareness
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WNCVUCHNORQLIJCMFSSZ2SGXBJJUAI46/>
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
bGluZSBjYWxsYmFjaw0KDQpTaWduZWQtb2ZmLWJ5OiBSb2IgQ2xhcmsgPHJvYmRjbGFya0BjaHJv
bWl1bS5vcmc+DQpSZXZpZXdlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5p
Z0BhbWQuY29tPg0KLS0tDQogZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jIHwgMjAgKysrKysr
KysrKysrKysrKysrKysNCiBpbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oICAgfCAyMCArKysrKysr
KysrKysrKysrKysrKw0KIDIgZmlsZXMgY2hhbmdlZCwgNDAgaW5zZXJ0aW9ucygrKQ0KDQpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jIGIvZHJpdmVycy9kbWEtYnVmL2Rt
YS1mZW5jZS5jDQppbmRleCAwZGUwNDgyY2QzNmUuLjc2M2IzMjYyNzY4NCAxMDA2NDQNCi0tLSBh
L2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYw0KKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1m
ZW5jZS5jDQpAQCAtOTEyLDYgKzkxMiwyNiBAQCBkbWFfZmVuY2Vfd2FpdF9hbnlfdGltZW91dChz
dHJ1Y3QgZG1hX2ZlbmNlICoqZmVuY2VzLCB1aW50MzJfdCBjb3VudCwNCiB9DQogRVhQT1JUX1NZ
TUJPTChkbWFfZmVuY2Vfd2FpdF9hbnlfdGltZW91dCk7DQogDQorDQorLyoqDQorICogZG1hX2Zl
bmNlX3NldF9kZWFkbGluZSAtIHNldCBkZXNpcmVkIGZlbmNlLXdhaXQgZGVhZGxpbmUNCisgKiBA
ZmVuY2U6ICAgIHRoZSBmZW5jZSB0aGF0IGlzIHRvIGJlIHdhaXRlZCBvbg0KKyAqIEBkZWFkbGlu
ZTogdGhlIHRpbWUgYnkgd2hpY2ggdGhlIHdhaXRlciBob3BlcyBmb3IgdGhlIGZlbmNlIHRvIGJl
DQorICogICAgICAgICAgICBzaWduYWxlZA0KKyAqDQorICogSW5mb3JtIHRoZSBmZW5jZSBzaWdu
YWxlciBvZiBhbiB1cGNvbWluZyBkZWFkbGluZSwgc3VjaCBhcyB2YmxhbmssIGJ5DQorICogd2hp
Y2ggcG9pbnQgdGhlIHdhaXRlciB3b3VsZCBwcmVmZXIgdGhlIGZlbmNlIHRvIGJlIHNpZ25hbGVk
IGJ5LiAgVGhpcw0KKyAqIGlzIGludGVuZGVkIHRvIGdpdmUgZmVlZGJhY2sgdG8gdGhlIGZlbmNl
IHNpZ25hbGVyIHRvIGFpZCBpbiBwb3dlcg0KKyAqIG1hbmFnZW1lbnQgZGVjaXNpb25zLCBzdWNo
IGFzIGJvb3N0aW5nIEdQVSBmcmVxdWVuY3kgaWYgYSBwZXJpb2RpYw0KKyAqIHZibGFuayBkZWFk
bGluZSBpcyBhcHByb2FjaGluZy4NCisgKi8NCit2b2lkIGRtYV9mZW5jZV9zZXRfZGVhZGxpbmUo
c3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsIGt0aW1lX3QgZGVhZGxpbmUpDQorew0KKwlpZiAoZmVu
Y2UtPm9wcy0+c2V0X2RlYWRsaW5lICYmICFkbWFfZmVuY2VfaXNfc2lnbmFsZWQoZmVuY2UpKQ0K
KwkJZmVuY2UtPm9wcy0+c2V0X2RlYWRsaW5lKGZlbmNlLCBkZWFkbGluZSk7DQorfQ0KK0VYUE9S
VF9TWU1CT0woZG1hX2ZlbmNlX3NldF9kZWFkbGluZSk7DQorDQogLyoqDQogICogZG1hX2ZlbmNl
X2Rlc2NyaWJlIC0gRHVtcCBmZW5jZSBkZXNjcmlidGlvbiBpbnRvIHNlcV9maWxlDQogICogQGZl
bmNlOiB0aGUgNmZlbmNlIHRvIGRlc2NyaWJlDQpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9k
bWEtZmVuY2UuaCBiL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmgNCmluZGV4IDc3NWNkYzBiNGYy
NC4uZDc3ZjY1OTFjNDUzIDEwMDY0NA0KLS0tIGEvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaA0K
KysrIGIvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaA0KQEAgLTk5LDYgKzk5LDcgQEAgZW51bSBk
bWFfZmVuY2VfZmxhZ19iaXRzIHsNCiAJRE1BX0ZFTkNFX0ZMQUdfU0lHTkFMRURfQklULA0KIAlE
TUFfRkVOQ0VfRkxBR19USU1FU1RBTVBfQklULA0KIAlETUFfRkVOQ0VfRkxBR19FTkFCTEVfU0lH
TkFMX0JJVCwNCisJRE1BX0ZFTkNFX0ZMQUdfSEFTX0RFQURMSU5FX0JJVCwNCiAJRE1BX0ZFTkNF
X0ZMQUdfVVNFUl9CSVRTLCAvKiBtdXN0IGFsd2F5cyBiZSBsYXN0IG1lbWJlciAqLw0KIH07DQog
DQpAQCAtMjU3LDYgKzI1OCwyMyBAQCBzdHJ1Y3QgZG1hX2ZlbmNlX29wcyB7DQogCSAqLw0KIAl2
b2lkICgqdGltZWxpbmVfdmFsdWVfc3RyKShzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwNCiAJCQkJ
ICAgY2hhciAqc3RyLCBpbnQgc2l6ZSk7DQorDQorCS8qKg0KKwkgKiBAc2V0X2RlYWRsaW5lOg0K
KwkgKg0KKwkgKiBDYWxsYmFjayB0byBhbGxvdyBhIGZlbmNlIHdhaXRlciB0byBpbmZvcm0gdGhl
IGZlbmNlIHNpZ25hbGVyIG9mDQorCSAqIGFuIHVwY29taW5nIGRlYWRsaW5lLCBzdWNoIGFzIHZi
bGFuaywgYnkgd2hpY2ggcG9pbnQgdGhlIHdhaXRlcg0KKwkgKiB3b3VsZCBwcmVmZXIgdGhlIGZl
bmNlIHRvIGJlIHNpZ25hbGVkIGJ5LiAgVGhpcyBpcyBpbnRlbmRlZCB0bw0KKwkgKiBnaXZlIGZl
ZWRiYWNrIHRvIHRoZSBmZW5jZSBzaWduYWxlciB0byBhaWQgaW4gcG93ZXIgbWFuYWdlbWVudA0K
KwkgKiBkZWNpc2lvbnMsIHN1Y2ggYXMgYm9vc3RpbmcgR1BVIGZyZXF1ZW5jeS4NCisJICoNCisJ
ICogVGhpcyBpcyBjYWxsZWQgd2l0aG91dCAmZG1hX2ZlbmNlLmxvY2sgaGVsZCwgaXQgY2FuIGJl
IGNhbGxlZA0KKwkgKiBtdWx0aXBsZSB0aW1lcyBhbmQgZnJvbSBhbnkgY29udGV4dC4gIExvY2tp
bmcgaXMgdXAgdG8gdGhlIGNhbGxlZQ0KKwkgKiBpZiBpdCBoYXMgc29tZSBzdGF0ZSB0byBtYW5h
Z2UuDQorCSAqDQorCSAqIFRoaXMgY2FsbGJhY2sgaXMgb3B0aW9uYWwuDQorCSAqLw0KKwl2b2lk
ICgqc2V0X2RlYWRsaW5lKShzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwga3RpbWVfdCBkZWFkbGlu
ZSk7DQogfTsNCiANCiB2b2lkIGRtYV9mZW5jZV9pbml0KHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNl
LCBjb25zdCBzdHJ1Y3QgZG1hX2ZlbmNlX29wcyAqb3BzLA0KQEAgLTU4Myw2ICs2MDEsOCBAQCBz
dGF0aWMgaW5saW5lIHNpZ25lZCBsb25nIGRtYV9mZW5jZV93YWl0KHN0cnVjdCBkbWFfZmVuY2Ug
KmZlbmNlLCBib29sIGludHIpDQogCXJldHVybiByZXQgPCAwID8gcmV0IDogMDsNCiB9DQogDQor
dm9pZCBkbWFfZmVuY2Vfc2V0X2RlYWRsaW5lKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLCBrdGlt
ZV90IGRlYWRsaW5lKTsNCisNCiBzdHJ1Y3QgZG1hX2ZlbmNlICpkbWFfZmVuY2VfZ2V0X3N0dWIo
dm9pZCk7DQogc3RydWN0IGRtYV9mZW5jZSAqZG1hX2ZlbmNlX2FsbG9jYXRlX3ByaXZhdGVfc3R1
Yih2b2lkKTsNCiB1NjQgZG1hX2ZlbmNlX2NvbnRleHRfYWxsb2ModW5zaWduZWQgbnVtKTsNCi0t
IA0KMi4zOS4xDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVh
dmVAbGlzdHMubGluYXJvLm9yZwo=
