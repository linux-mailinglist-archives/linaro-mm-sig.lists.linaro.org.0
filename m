Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id F122369D4C5
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Feb 2023 21:20:00 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0E4924423A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Feb 2023 20:20:00 +0000 (UTC)
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	by lists.linaro.org (Postfix) with ESMTPS id F41083F31A
	for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Feb 2023 20:19:21 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=L3pLkaDH;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.210.174 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pf1-f174.google.com with SMTP id g12so1186842pfi.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Feb 2023 12:19:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bAzgDJUXjy9h0b3wWSJvQgc6EH9SI72PAik2xEzTc0A=;
        b=L3pLkaDHvEbV43iHZrzlIEV7OhTotYtHn/7GtNIJgutWGMGrnnN9lu6JzkyGk2eqtv
         gAeYOrSjmSd5R+JzfsJrDASD1KvwFIfmh+OtnGd/4B0aAFgLP4f01sK+arwiDDVngZNU
         b6tajlB2k+l07TTmVMJYoyWmqQhWwklrEhVKAsPnnpsrwWDRdG2JZjZPCcJLCDvCE1ZV
         zNvNGA0mww53jE5+oTomy4ePhhb1a7HPVS6NLi50cYWoZAduiH314mQnGHROPJfKIr/+
         /CUxe1TvUq5paX+fqp7V/6REycY2S73V2owLVjcOyM/c5leU7xy/oiEJ5QpSbktFbQZH
         0/sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bAzgDJUXjy9h0b3wWSJvQgc6EH9SI72PAik2xEzTc0A=;
        b=vTr6TjE8CnXXSC3DAA0dIjGb322fiZ0rHNa8HljM/EMX3DA/88A/bTFsNB6LW5BMGD
         qtfYwIjw1yz0sc+MfmTaOjYUBWyJCxTmVhAK5WxH32EHBlM6D5wJd7tkl2vEl0rStYyj
         PLWPo+gZPYmXZClhGzwwXRTCXrQDST6X2qIs2VKN03WN7E2h99X4JHNlVPKbYNwyT+23
         yb+DkbiUA5pjstW7pzPaZgywfObTrEHRBPnoe7dSFf/gsSuHB884JHpQsq7SSkL1qG87
         xdq5wT3XljlZ7UECGmuEK4KNslONcCiqcBz/w5JB7j2xaE7Wz4fbgdeev54dgtwrrZWB
         WdVQ==
X-Gm-Message-State: AO0yUKVKbUO2tefhR7FVRTzj7OIazKZGB6M98UwTUddM1jAZkBzOhPmY
	5QJy2zIO2g4lyPoaHVwHcDvkVOx1BI0=
X-Google-Smtp-Source: AK7set+T1ETLgiEQvfF2x6OGFtWpU1Whd0FMuM7my/yGNBBYPdgyZrdMLMOhVxHrUvhUAs/zc+udAA==
X-Received: by 2002:a05:6a00:13a5:b0:5a8:c699:3eaa with SMTP id t37-20020a056a0013a500b005a8c6993eaamr3307609pfg.9.1676924361040;
        Mon, 20 Feb 2023 12:19:21 -0800 (PST)
Received: from localhost (c-73-67-135-195.hsd1.or.comcast.net. [73.67.135.195])
        by smtp.gmail.com with ESMTPSA id v24-20020aa78518000000b005a9ea5d43ddsm6634377pfn.174.2023.02.20.12.19.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Feb 2023 12:19:20 -0800 (PST)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Mon, 20 Feb 2023 12:18:48 -0800
Message-Id: <20230220201916.1822214-2-robdclark@gmail.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230220201916.1822214-1-robdclark@gmail.com>
References: <20230220201916.1822214-1-robdclark@gmail.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: F41083F31A
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.210.174:from];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_FROM(0.00)[gmail.com];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,ffwll.ch,gmail.com,daenzer.net,intel.com,amd.com,emersion.fr,chromium.org,linaro.org,padovan.org,vger.kernel.org,lists.linaro.org];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: LEMCISNDJMZFJC6664BUUQB765HYRYHL
X-Message-ID-Hash: LEMCISNDJMZFJC6664BUUQB765HYRYHL
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: freedreno@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, =?UTF-8?q?Michel=20D=C3=A4nzer?= <michel@daenzer.net>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Alex Deucher <alexander.deucher@amd.com>, Pekka Paalanen <ppaalanen@gmail.com>, Simon Ser <contact@emersion.fr>, Rob Clark <robdclark@chromium.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, open list <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v5 01/14] dma-buf/dma-fence: Add deadline awareness
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LEMCISNDJMZFJC6664BUUQB765HYRYHL/>
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
IGhpbnQNCg0KU2lnbmVkLW9mZi1ieTogUm9iIENsYXJrIDxyb2JkY2xhcmtAY2hyb21pdW0ub3Jn
Pg0KUmV2aWV3ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNv
bT4NCi0tLQ0KIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYyB8IDIxICsrKysrKysrKysrKysr
KysrKysrKw0KIGluY2x1ZGUvbGludXgvZG1hLWZlbmNlLmggICB8IDIwICsrKysrKysrKysrKysr
KysrKysrDQogMiBmaWxlcyBjaGFuZ2VkLCA0MSBpbnNlcnRpb25zKCspDQoNCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNl
LmMNCmluZGV4IDBkZTA0ODJjZDM2ZS4uZTMzMzE3NjEzODRjIDEwMDY0NA0KLS0tIGEvZHJpdmVy
cy9kbWEtYnVmL2RtYS1mZW5jZS5jDQorKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMN
CkBAIC05MTIsNiArOTEyLDI3IEBAIGRtYV9mZW5jZV93YWl0X2FueV90aW1lb3V0KHN0cnVjdCBk
bWFfZmVuY2UgKipmZW5jZXMsIHVpbnQzMl90IGNvdW50LA0KIH0NCiBFWFBPUlRfU1lNQk9MKGRt
YV9mZW5jZV93YWl0X2FueV90aW1lb3V0KTsNCiANCisNCisvKioNCisgKiBkbWFfZmVuY2Vfc2V0
X2RlYWRsaW5lIC0gc2V0IGRlc2lyZWQgZmVuY2Utd2FpdCBkZWFkbGluZQ0KKyAqIEBmZW5jZTog
ICAgdGhlIGZlbmNlIHRoYXQgaXMgdG8gYmUgd2FpdGVkIG9uDQorICogQGRlYWRsaW5lOiB0aGUg
dGltZSBieSB3aGljaCB0aGUgd2FpdGVyIGhvcGVzIGZvciB0aGUgZmVuY2UgdG8gYmUNCisgKiAg
ICAgICAgICAgIHNpZ25hbGVkDQorICoNCisgKiBHaXZlIHRoZSBmZW5jZSBzaWduYWxlciBhIGhp
bnQgYWJvdXQgYW4gdXBjb21pbmcgZGVhZGxpbmUsIHN1Y2ggYXMNCisgKiB2YmxhbmssIGJ5IHdo
aWNoIHBvaW50IHRoZSB3YWl0ZXIgd291bGQgcHJlZmVyIHRoZSBmZW5jZSB0byBiZQ0KKyAqIHNp
Z25hbGVkIGJ5LiAgVGhpcyBpcyBpbnRlbmRlZCB0byBnaXZlIGZlZWRiYWNrIHRvIHRoZSBmZW5j
ZSBzaWduYWxlcg0KKyAqIHRvIGFpZCBpbiBwb3dlciBtYW5hZ2VtZW50IGRlY2lzaW9ucywgc3Vj
aCBhcyBib29zdGluZyBHUFUgZnJlcXVlbmN5DQorICogaWYgYSBwZXJpb2RpYyB2YmxhbmsgZGVh
ZGxpbmUgaXMgYXBwcm9hY2hpbmcgYnV0IHRoZSBmZW5jZSBpcyBub3QNCisgKiB5ZXQgc2lnbmFs
ZWQuLg0KKyAqLw0KK3ZvaWQgZG1hX2ZlbmNlX3NldF9kZWFkbGluZShzdHJ1Y3QgZG1hX2ZlbmNl
ICpmZW5jZSwga3RpbWVfdCBkZWFkbGluZSkNCit7DQorCWlmIChmZW5jZS0+b3BzLT5zZXRfZGVh
ZGxpbmUgJiYgIWRtYV9mZW5jZV9pc19zaWduYWxlZChmZW5jZSkpDQorCQlmZW5jZS0+b3BzLT5z
ZXRfZGVhZGxpbmUoZmVuY2UsIGRlYWRsaW5lKTsNCit9DQorRVhQT1JUX1NZTUJPTChkbWFfZmVu
Y2Vfc2V0X2RlYWRsaW5lKTsNCisNCiAvKioNCiAgKiBkbWFfZmVuY2VfZGVzY3JpYmUgLSBEdW1w
IGZlbmNlIGRlc2NyaWJ0aW9uIGludG8gc2VxX2ZpbGUNCiAgKiBAZmVuY2U6IHRoZSA2ZmVuY2Ug
dG8gZGVzY3JpYmUNCmRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oIGIvaW5j
bHVkZS9saW51eC9kbWEtZmVuY2UuaA0KaW5kZXggNzc1Y2RjMGI0ZjI0Li5kNzdmNjU5MWM0NTMg
MTAwNjQ0DQotLS0gYS9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oDQorKysgYi9pbmNsdWRlL2xp
bnV4L2RtYS1mZW5jZS5oDQpAQCAtOTksNiArOTksNyBAQCBlbnVtIGRtYV9mZW5jZV9mbGFnX2Jp
dHMgew0KIAlETUFfRkVOQ0VfRkxBR19TSUdOQUxFRF9CSVQsDQogCURNQV9GRU5DRV9GTEFHX1RJ
TUVTVEFNUF9CSVQsDQogCURNQV9GRU5DRV9GTEFHX0VOQUJMRV9TSUdOQUxfQklULA0KKwlETUFf
RkVOQ0VfRkxBR19IQVNfREVBRExJTkVfQklULA0KIAlETUFfRkVOQ0VfRkxBR19VU0VSX0JJVFMs
IC8qIG11c3QgYWx3YXlzIGJlIGxhc3QgbWVtYmVyICovDQogfTsNCiANCkBAIC0yNTcsNiArMjU4
LDIzIEBAIHN0cnVjdCBkbWFfZmVuY2Vfb3BzIHsNCiAJICovDQogCXZvaWQgKCp0aW1lbGluZV92
YWx1ZV9zdHIpKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLA0KIAkJCQkgICBjaGFyICpzdHIsIGlu
dCBzaXplKTsNCisNCisJLyoqDQorCSAqIEBzZXRfZGVhZGxpbmU6DQorCSAqDQorCSAqIENhbGxi
YWNrIHRvIGFsbG93IGEgZmVuY2Ugd2FpdGVyIHRvIGluZm9ybSB0aGUgZmVuY2Ugc2lnbmFsZXIg
b2YNCisJICogYW4gdXBjb21pbmcgZGVhZGxpbmUsIHN1Y2ggYXMgdmJsYW5rLCBieSB3aGljaCBw
b2ludCB0aGUgd2FpdGVyDQorCSAqIHdvdWxkIHByZWZlciB0aGUgZmVuY2UgdG8gYmUgc2lnbmFs
ZWQgYnkuICBUaGlzIGlzIGludGVuZGVkIHRvDQorCSAqIGdpdmUgZmVlZGJhY2sgdG8gdGhlIGZl
bmNlIHNpZ25hbGVyIHRvIGFpZCBpbiBwb3dlciBtYW5hZ2VtZW50DQorCSAqIGRlY2lzaW9ucywg
c3VjaCBhcyBib29zdGluZyBHUFUgZnJlcXVlbmN5Lg0KKwkgKg0KKwkgKiBUaGlzIGlzIGNhbGxl
ZCB3aXRob3V0ICZkbWFfZmVuY2UubG9jayBoZWxkLCBpdCBjYW4gYmUgY2FsbGVkDQorCSAqIG11
bHRpcGxlIHRpbWVzIGFuZCBmcm9tIGFueSBjb250ZXh0LiAgTG9ja2luZyBpcyB1cCB0byB0aGUg
Y2FsbGVlDQorCSAqIGlmIGl0IGhhcyBzb21lIHN0YXRlIHRvIG1hbmFnZS4NCisJICoNCisJICog
VGhpcyBjYWxsYmFjayBpcyBvcHRpb25hbC4NCisJICovDQorCXZvaWQgKCpzZXRfZGVhZGxpbmUp
KHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLCBrdGltZV90IGRlYWRsaW5lKTsNCiB9Ow0KIA0KIHZv
aWQgZG1hX2ZlbmNlX2luaXQoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsIGNvbnN0IHN0cnVjdCBk
bWFfZmVuY2Vfb3BzICpvcHMsDQpAQCAtNTgzLDYgKzYwMSw4IEBAIHN0YXRpYyBpbmxpbmUgc2ln
bmVkIGxvbmcgZG1hX2ZlbmNlX3dhaXQoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsIGJvb2wgaW50
cikNCiAJcmV0dXJuIHJldCA8IDAgPyByZXQgOiAwOw0KIH0NCiANCit2b2lkIGRtYV9mZW5jZV9z
ZXRfZGVhZGxpbmUoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsIGt0aW1lX3QgZGVhZGxpbmUpOw0K
Kw0KIHN0cnVjdCBkbWFfZmVuY2UgKmRtYV9mZW5jZV9nZXRfc3R1Yih2b2lkKTsNCiBzdHJ1Y3Qg
ZG1hX2ZlbmNlICpkbWFfZmVuY2VfYWxsb2NhdGVfcHJpdmF0ZV9zdHViKHZvaWQpOw0KIHU2NCBk
bWFfZmVuY2VfY29udGV4dF9hbGxvYyh1bnNpZ25lZCBudW0pOw0KLS0gDQoyLjM5LjENCg0KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNp
ZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vi
c2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8u
b3JnCg==
