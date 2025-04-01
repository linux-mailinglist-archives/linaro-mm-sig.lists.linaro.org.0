Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BC81A77FD9
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Apr 2025 18:10:17 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 129064461D
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Apr 2025 16:10:13 +0000 (UTC)
Received: from mail-io1-f52.google.com (mail-io1-f52.google.com [209.85.166.52])
	by lists.linaro.org (Postfix) with ESMTPS id 4DD3A4461D
	for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Apr 2025 16:09:55 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=My95q1Oy;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.166.52 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-io1-f52.google.com with SMTP id ca18e2360f4ac-85d9a87660fso482563139f.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 01 Apr 2025 09:09:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743523795; x=1744128595; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fJH6ATFt5Un9kLuUVs0DY+xyNkxCSbS19/se7Ih7dOg=;
        b=My95q1OyCRb0UpbXUNUec5rMYYnNNbLyDrLuBO3yQc+DVIWpfkMqi7ecnAwsmS41IU
         14KqP7WpeTB7LCfowbom7cZC3ym2ZtIXgJJWETQNtQ+bPxuw0mGV2ypJDXxDW5hbT1g7
         9aYfrfT9DviS+lOxZf6Vk3hcFC3+FYukCAEsEvkiB9++jsRbkLTj6nPTyogfOLkwF899
         sV2/lvCDn2jbpE+zdwmz1wrVV0BwtQHZiFOQs2RFTazLIfYYsMJH9TkRlJfjGpV9FgFT
         bMoLErHoLZYszCkTA2g7YF1vWI6zszVlbcTxowDvre4L9VuiXp2yWJzv/6huj2nnP7mg
         noww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743523795; x=1744128595;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fJH6ATFt5Un9kLuUVs0DY+xyNkxCSbS19/se7Ih7dOg=;
        b=mBMlzw8jl3Y9veRJaXG465w1L7nCcWPM+5M5mxEEmHL2mcYXKkIrIwh1VXbjHTL0lq
         yMKG7XrW+Dx96eZDOquP7NAZ/0067fm8nOF4d/M+TUgrykldY89BCod8yGcy7CvZ6pbM
         WYUKy05cRfPiYJ5BBPEei8PT0hpzcey7P4tt5ozZMxWfbwJ2tH+xsmVBNSfXSdjmRexA
         GWBZf3g58VlKbFkFgnYFyhsIhaprGCtCGK57STDIjblI0ZZSIIfpHRJJF/ZTiRLPZfYS
         03zGEfUwVb2DgSTo+qc7ULAKihUFz3u8hsWisqUQI3Q999o7vwJVWPDhUW1IbSRhGrVh
         342A==
X-Forwarded-Encrypted: i=1; AJvYcCWFNSjJGsQBydDSjiUWo8TKVVJIZADeSFrAacwya3GFj2fXM3pAnRI0OhQPi+9b9+OtsgQLiljMdPdyUH1q@lists.linaro.org
X-Gm-Message-State: AOJu0YykuDg2WJL0wRtGeygb8wZN+9/TWAc3ioWV5GiEy5gAuYoLet0T
	s1G4CCtR4UIQrytBKu90JymCCHbhEqY0/HdvolMQ/gqi/Ccelnm1dMCc2g==
X-Gm-Gg: ASbGncv1do436ghXBkJE0PR//zMGr97eQ5hqfJDCLphFl2wvPXmpFUgHJJ/SrzK3aJ0
	4SHDUaVDdIrDNkTueTbp2ErcLFI7k3hW3+IWyHrjJj6uji8FfJSGqU4TUVl7zF7QI1RnICK1qWW
	e37HjG1UKqhZEkZ3sfCI6CUpLax5nbd/P8qyv1RiNo5jedYbmHm60sKg5hv281ORneEU1pn59Co
	EWk70Et9q03zKERnTKYZDpYf0LZzw31DHZNcw/3tVQmiFVo6VE1iPX4if1ze9bMeyszTgmtYTFe
	iiUyIO3ZmOXv7iJoN2+6Ct2Dtjg/2aarKh6I3yMisfVx77jOcqb8v7RGdP26pvjIEFpjJ5ufVWf
	DbhnG9Ov2WirCKybmQeA=
X-Google-Smtp-Source: AGHT+IEMQK5Uw8F9wEfsJTHQFcSwehiUaH4GbiWL58FJVcHeW3soaaFsqIizRSu/dHaDx3lBd1yIYQ==
X-Received: by 2002:a17:902:cec3:b0:215:b473:1dc9 with SMTP id d9443c01a7336-2292f9fc071mr220976905ad.46.1743523083175;
        Tue, 01 Apr 2025 08:58:03 -0700 (PDT)
Received: from localhost ([2a00:79e0:3e00:2601:3afc:446b:f0df:eadc])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2291f1f937bsm90014575ad.222.2025.04.01.08.58.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Apr 2025 08:58:02 -0700 (PDT)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Tue,  1 Apr 2025 08:57:58 -0700
Message-ID: <20250401155758.48855-1-robdclark@gmail.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 4DD3A4461D
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	RBL_SENDERSCORE_REPUT_7(0.50)[209.85.166.52:from];
	BAD_REP_POLICIES(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	R_DKIM_ALLOW(0.00)[gmail.com:s=20230601];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[amd.com,collabora.com,chromium.org,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,vger.kernel.org,lists.linaro.org];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-0.949];
	R_SPF_ALLOW(0.00)[+ip4:209.85.128.0/17];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.166.52:from];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com]
X-Rspamd-Action: no action
Message-ID-Hash: WIMZJQH3EAZG2TKPIL3AOZE5KDNUP3BA
X-Message-ID-Hash: WIMZJQH3EAZG2TKPIL3AOZE5KDNUP3BA
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Rob Clark <robdclark@chromium.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_?:buf|fence|resvb" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_?:buf|fence|resvb" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v6] drm/syncobj: Extend EXPORT_SYNC_FILE for timeline syncobjs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WIMZJQH3EAZG2TKPIL3AOZE5KDNUP3BA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RnJvbTogUm9iIENsYXJrIDxyb2JkY2xhcmtAY2hyb21pdW0ub3JnPg0KDQpBZGQgc3VwcG9ydCBm
b3IgZXhwb3J0aW5nIGEgZG1hX2ZlbmNlIGZkIGZvciBhIHNwZWNpZmljIHBvaW50IG9uIGENCnRp
bWVsaW5lLiAgVGhpcyBpcyBuZWVkZWQgZm9yIHZ0ZXN0L3ZwaXBlWzFdWzJdIHRvIGltcGxlbWVu
dCB0aW1lbGluZQ0Kc3luY29iaiBzdXBwb3J0LCBhcyBpdCBuZWVkcyBhIHdheSB0byB0dXJuIGEg
cG9pbnQgb24gYSB0aW1lbGluZSBiYWNrDQppbnRvIGEgZG1hX2ZlbmNlIGZkLiAgSXQgYWxzbyBj
bG9zZXMgYW4gb2RkIG9taXNzaW9uIGZyb20gdGhlIHN5bmNvYmoNClVBUEkuDQoNClsxXSBodHRw
czovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvbWVzYS9tZXNhLy0vbWVyZ2VfcmVxdWVzdHMvMzM0
MzMNClsyXSBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvdmlyZ2wvdmlyZ2xyZW5kZXJl
ci8tL21lcmdlX3JlcXVlc3RzLzgwNQ0KDQp2MjogQWRkIERSTV9TWU5DT0JKX0hBTkRMRV9UT19G
RF9GTEFHU19USU1FTElORQ0KdjM6IEFkZCB1bnN0YWdlZCB1YWJpIGhlYWRlciBodW5rDQp2NDog
QWxzbyBoYW5kbGUgSU1QT1JUX1NZTkNfRklMRSBjYXNlDQp2NTogQWRkcmVzcyBjb21tZW50cyBm
cm9tIERtaXRyeQ0KdjY6IGNoZWNrcGF0Y2gucGwgbml0cw0KDQpTaWduZWQtb2ZmLWJ5OiBSb2Ig
Q2xhcmsgPHJvYmRjbGFya0BjaHJvbWl1bS5vcmc+DQpSZXZpZXdlZC1ieTogQ2hyaXN0aWFuIEvD
tm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KUmV2aWV3ZWQtYnk6IERtaXRyeSBPc2lw
ZW5rbyA8ZG1pdHJ5Lm9zaXBlbmtvQGNvbGxhYm9yYS5jb20+DQotLS0NCiBkcml2ZXJzL2dwdS9k
cm0vZHJtX3N5bmNvYmouYyB8IDQ3ICsrKysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0t
DQogaW5jbHVkZS91YXBpL2RybS9kcm0uaCAgICAgICAgfCAgNCArKysNCiAyIGZpbGVzIGNoYW5n
ZWQsIDQxIGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2RybV9zeW5jb2JqLmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX3N5bmNvYmou
Yw0KaW5kZXggNGYyYWI4YTdiNTBmLi42MzZjZDgzY2EyOWUgMTAwNjQ0DQotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vZHJtX3N5bmNvYmouYw0KKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9zeW5jb2Jq
LmMNCkBAIC03NDEsNyArNzQxLDcgQEAgc3RhdGljIGludCBkcm1fc3luY29ial9mZF90b19oYW5k
bGUoc3RydWN0IGRybV9maWxlICpmaWxlX3ByaXZhdGUsDQogfQ0KIA0KIHN0YXRpYyBpbnQgZHJt
X3N5bmNvYmpfaW1wb3J0X3N5bmNfZmlsZV9mZW5jZShzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGVfcHJp
dmF0ZSwNCi0JCQkJCSAgICAgIGludCBmZCwgaW50IGhhbmRsZSkNCisJCQkJCSAgICAgIGludCBm
ZCwgaW50IGhhbmRsZSwgdTY0IHBvaW50KQ0KIHsNCiAJc3RydWN0IGRtYV9mZW5jZSAqZmVuY2Ug
PSBzeW5jX2ZpbGVfZ2V0X2ZlbmNlKGZkKTsNCiAJc3RydWN0IGRybV9zeW5jb2JqICpzeW5jb2Jq
Ow0KQEAgLTc1NSwxNCArNzU1LDI0IEBAIHN0YXRpYyBpbnQgZHJtX3N5bmNvYmpfaW1wb3J0X3N5
bmNfZmlsZV9mZW5jZShzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGVfcHJpdmF0ZSwNCiAJCXJldHVybiAt
RU5PRU5UOw0KIAl9DQogDQotCWRybV9zeW5jb2JqX3JlcGxhY2VfZmVuY2Uoc3luY29iaiwgZmVu
Y2UpOw0KKwlpZiAocG9pbnQpIHsNCisJCXN0cnVjdCBkbWFfZmVuY2VfY2hhaW4gKmNoYWluID0g
ZG1hX2ZlbmNlX2NoYWluX2FsbG9jKCk7DQorDQorCQlpZiAoIWNoYWluKQ0KKwkJCXJldHVybiAt
RU5PTUVNOw0KKw0KKwkJZHJtX3N5bmNvYmpfYWRkX3BvaW50KHN5bmNvYmosIGNoYWluLCBmZW5j
ZSwgcG9pbnQpOw0KKwl9IGVsc2Ugew0KKwkJZHJtX3N5bmNvYmpfcmVwbGFjZV9mZW5jZShzeW5j
b2JqLCBmZW5jZSk7DQorCX0NCisNCiAJZG1hX2ZlbmNlX3B1dChmZW5jZSk7DQogCWRybV9zeW5j
b2JqX3B1dChzeW5jb2JqKTsNCiAJcmV0dXJuIDA7DQogfQ0KIA0KIHN0YXRpYyBpbnQgZHJtX3N5
bmNvYmpfZXhwb3J0X3N5bmNfZmlsZShzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGVfcHJpdmF0ZSwNCi0J
CQkJCWludCBoYW5kbGUsIGludCAqcF9mZCkNCisJCQkJCWludCBoYW5kbGUsIHU2NCBwb2ludCwg
aW50ICpwX2ZkKQ0KIHsNCiAJaW50IHJldDsNCiAJc3RydWN0IGRtYV9mZW5jZSAqZmVuY2U7DQpA
QCAtNzcyLDcgKzc4Miw3IEBAIHN0YXRpYyBpbnQgZHJtX3N5bmNvYmpfZXhwb3J0X3N5bmNfZmls
ZShzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGVfcHJpdmF0ZSwNCiAJaWYgKGZkIDwgMCkNCiAJCXJldHVy
biBmZDsNCiANCi0JcmV0ID0gZHJtX3N5bmNvYmpfZmluZF9mZW5jZShmaWxlX3ByaXZhdGUsIGhh
bmRsZSwgMCwgMCwgJmZlbmNlKTsNCisJcmV0ID0gZHJtX3N5bmNvYmpfZmluZF9mZW5jZShmaWxl
X3ByaXZhdGUsIGhhbmRsZSwgcG9pbnQsIDAsICZmZW5jZSk7DQogCWlmIChyZXQpDQogCQlnb3Rv
IGVycl9wdXRfZmQ7DQogDQpAQCAtODY5LDYgKzg3OSw5IEBAIGRybV9zeW5jb2JqX2hhbmRsZV90
b19mZF9pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLA0KIAkJCQkgICBz
dHJ1Y3QgZHJtX2ZpbGUgKmZpbGVfcHJpdmF0ZSkNCiB7DQogCXN0cnVjdCBkcm1fc3luY29ial9o
YW5kbGUgKmFyZ3MgPSBkYXRhOw0KKwl1bnNpZ25lZCBpbnQgdmFsaWRfZmxhZ3MgPSBEUk1fU1lO
Q09CSl9IQU5ETEVfVE9fRkRfRkxBR1NfVElNRUxJTkUgfA0KKwkJCQkgICBEUk1fU1lOQ09CSl9I
QU5ETEVfVE9fRkRfRkxBR1NfRVhQT1JUX1NZTkNfRklMRTsNCisJdTY0IHBvaW50ID0gMDsNCiAN
CiAJaWYgKCFkcm1fY29yZV9jaGVja19mZWF0dXJlKGRldiwgRFJJVkVSX1NZTkNPQkopKQ0KIAkJ
cmV0dXJuIC1FT1BOT1RTVVBQOw0KQEAgLTg3NiwxMyArODg5LDE4IEBAIGRybV9zeW5jb2JqX2hh
bmRsZV90b19mZF9pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLA0KIAlp
ZiAoYXJncy0+cGFkKQ0KIAkJcmV0dXJuIC1FSU5WQUw7DQogDQotCWlmIChhcmdzLT5mbGFncyAh
PSAwICYmDQotCSAgICBhcmdzLT5mbGFncyAhPSBEUk1fU1lOQ09CSl9IQU5ETEVfVE9fRkRfRkxB
R1NfRVhQT1JUX1NZTkNfRklMRSkNCisJaWYgKGFyZ3MtPmZsYWdzICYgfnZhbGlkX2ZsYWdzKQ0K
IAkJcmV0dXJuIC1FSU5WQUw7DQogDQorCWlmIChhcmdzLT5mbGFncyAmIERSTV9TWU5DT0JKX0hB
TkRMRV9UT19GRF9GTEFHU19USU1FTElORSkNCisJCXBvaW50ID0gYXJncy0+cG9pbnQ7DQorDQog
CWlmIChhcmdzLT5mbGFncyAmIERSTV9TWU5DT0JKX0hBTkRMRV9UT19GRF9GTEFHU19FWFBPUlRf
U1lOQ19GSUxFKQ0KIAkJcmV0dXJuIGRybV9zeW5jb2JqX2V4cG9ydF9zeW5jX2ZpbGUoZmlsZV9w
cml2YXRlLCBhcmdzLT5oYW5kbGUsDQotCQkJCQkJICAgICZhcmdzLT5mZCk7DQorCQkJCQkJICAg
IHBvaW50LCAmYXJncy0+ZmQpOw0KKw0KKwlpZiAoYXJncy0+cG9pbnQpDQorCQlyZXR1cm4gLUVJ
TlZBTDsNCiANCiAJcmV0dXJuIGRybV9zeW5jb2JqX2hhbmRsZV90b19mZChmaWxlX3ByaXZhdGUs
IGFyZ3MtPmhhbmRsZSwNCiAJCQkJCSZhcmdzLT5mZCk7DQpAQCAtODkzLDYgKzkxMSw5IEBAIGRy
bV9zeW5jb2JqX2ZkX3RvX2hhbmRsZV9pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lk
ICpkYXRhLA0KIAkJCQkgICBzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGVfcHJpdmF0ZSkNCiB7DQogCXN0
cnVjdCBkcm1fc3luY29ial9oYW5kbGUgKmFyZ3MgPSBkYXRhOw0KKwl1bnNpZ25lZCBpbnQgdmFs
aWRfZmxhZ3MgPSBEUk1fU1lOQ09CSl9GRF9UT19IQU5ETEVfRkxBR1NfVElNRUxJTkUgfA0KKwkJ
CQkgICBEUk1fU1lOQ09CSl9GRF9UT19IQU5ETEVfRkxBR1NfSU1QT1JUX1NZTkNfRklMRTsNCisJ
dTY0IHBvaW50ID0gMDsNCiANCiAJaWYgKCFkcm1fY29yZV9jaGVja19mZWF0dXJlKGRldiwgRFJJ
VkVSX1NZTkNPQkopKQ0KIAkJcmV0dXJuIC1FT1BOT1RTVVBQOw0KQEAgLTkwMCwxNCArOTIxLDIw
IEBAIGRybV9zeW5jb2JqX2ZkX3RvX2hhbmRsZV9pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2
LCB2b2lkICpkYXRhLA0KIAlpZiAoYXJncy0+cGFkKQ0KIAkJcmV0dXJuIC1FSU5WQUw7DQogDQot
CWlmIChhcmdzLT5mbGFncyAhPSAwICYmDQotCSAgICBhcmdzLT5mbGFncyAhPSBEUk1fU1lOQ09C
Sl9GRF9UT19IQU5ETEVfRkxBR1NfSU1QT1JUX1NZTkNfRklMRSkNCisJaWYgKGFyZ3MtPmZsYWdz
ICYgfnZhbGlkX2ZsYWdzKQ0KIAkJcmV0dXJuIC1FSU5WQUw7DQogDQorCWlmIChhcmdzLT5mbGFn
cyAmIERSTV9TWU5DT0JKX0ZEX1RPX0hBTkRMRV9GTEFHU19USU1FTElORSkNCisJCXBvaW50ID0g
YXJncy0+cG9pbnQ7DQorDQogCWlmIChhcmdzLT5mbGFncyAmIERSTV9TWU5DT0JKX0ZEX1RPX0hB
TkRMRV9GTEFHU19JTVBPUlRfU1lOQ19GSUxFKQ0KIAkJcmV0dXJuIGRybV9zeW5jb2JqX2ltcG9y
dF9zeW5jX2ZpbGVfZmVuY2UoZmlsZV9wcml2YXRlLA0KIAkJCQkJCQkgIGFyZ3MtPmZkLA0KLQkJ
CQkJCQkgIGFyZ3MtPmhhbmRsZSk7DQorCQkJCQkJCSAgYXJncy0+aGFuZGxlLA0KKwkJCQkJCQkg
IHBvaW50KTsNCisNCisJaWYgKGFyZ3MtPnBvaW50KQ0KKwkJcmV0dXJuIC1FSU5WQUw7DQogDQog
CXJldHVybiBkcm1fc3luY29ial9mZF90b19oYW5kbGUoZmlsZV9wcml2YXRlLCBhcmdzLT5mZCwN
CiAJCQkJCSZhcmdzLT5oYW5kbGUpOw0KZGlmZiAtLWdpdCBhL2luY2x1ZGUvdWFwaS9kcm0vZHJt
LmggYi9pbmNsdWRlL3VhcGkvZHJtL2RybS5oDQppbmRleCA3ZmJhMzdiOTQ0MDEuLmU2M2E3MWQz
YzYwNyAxMDA2NDQNCi0tLSBhL2luY2x1ZGUvdWFwaS9kcm0vZHJtLmgNCisrKyBiL2luY2x1ZGUv
dWFwaS9kcm0vZHJtLmgNCkBAIC05MDUsMTMgKzkwNSwxNyBAQCBzdHJ1Y3QgZHJtX3N5bmNvYmpf
ZGVzdHJveSB7DQogfTsNCiANCiAjZGVmaW5lIERSTV9TWU5DT0JKX0ZEX1RPX0hBTkRMRV9GTEFH
U19JTVBPUlRfU1lOQ19GSUxFICgxIDw8IDApDQorI2RlZmluZSBEUk1fU1lOQ09CSl9GRF9UT19I
QU5ETEVfRkxBR1NfVElNRUxJTkUgICAgICAgICAoMSA8PCAxKQ0KICNkZWZpbmUgRFJNX1NZTkNP
QkpfSEFORExFX1RPX0ZEX0ZMQUdTX0VYUE9SVF9TWU5DX0ZJTEUgKDEgPDwgMCkNCisjZGVmaW5l
IERSTV9TWU5DT0JKX0hBTkRMRV9UT19GRF9GTEFHU19USU1FTElORSAgICAgICAgICgxIDw8IDEp
DQogc3RydWN0IGRybV9zeW5jb2JqX2hhbmRsZSB7DQogCV9fdTMyIGhhbmRsZTsNCiAJX191MzIg
ZmxhZ3M7DQogDQogCV9fczMyIGZkOw0KIAlfX3UzMiBwYWQ7DQorDQorCV9fdTY0IHBvaW50Ow0K
IH07DQogDQogc3RydWN0IGRybV9zeW5jb2JqX3RyYW5zZmVyIHsNCi0tIA0KMi40OS4wDQoNCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1z
aWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJv
Lm9yZwo=
