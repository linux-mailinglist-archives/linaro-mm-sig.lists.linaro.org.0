Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C5BEB62E2DC
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Nov 2022 18:20:00 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A0A1B3F5AB
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Nov 2022 17:19:59 +0000 (UTC)
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	by lists.linaro.org (Postfix) with ESMTPS id 7796A3EF32
	for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Nov 2022 17:19:43 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=googlemail.com header.s=20210112 header.b=fy3Tzc3S;
	spf=pass (lists.linaro.org: domain of lukasz.wiecaszek@googlemail.com designates 209.85.218.47 as permitted sender) smtp.mailfrom=lukasz.wiecaszek@googlemail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ej1-f47.google.com with SMTP id kt23so6734079ejc.7
        for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Nov 2022 09:19:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vQyLviGauL30ZeO1VGGTeRWRAcWIrY0ASAZn99FKrKk=;
        b=fy3Tzc3SpdWc06CoKx7g1QwwPHkHOB52LAGG2x0xRXgBBRgB+lhzB4dijn+MMgvCeo
         +5REjnoYlMAIGg9muDOehuGTyb3yMonp7FWDWMeDx+kccf8/GI9w7Gb37iOlCByty0Io
         gAEBG+4wDRyCNpGARhe8IWVrC34XHmo8N2d/bzPgnmD/e573rG5YdA0eYNnJM9TNaP0J
         7TqYmvcQfO0ReBOxz+w820/rvEZB03wQ6CleZceh6xToQnloUYi5RF3I6CHeY/Y9q/ws
         SCeMehGPWjpATVnss7nV36hcQp+q6iM8X81Uuqd8taY5/ezLJqtp5750TZJKQHOhUNAP
         X7jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vQyLviGauL30ZeO1VGGTeRWRAcWIrY0ASAZn99FKrKk=;
        b=jwnqi1TFegPexYCUtwncT2AxYnWQKfgiaf7MVDkSz44AKRSwGj8Wn686SA0XaccH8l
         U4IZtX8dKvCDR6fOyXxuMkb3RHnyPxbt5OCcc2yxOvId+fUI6bbanGUqXAzU1OJFXzWK
         dGZiRuOkJVap2F/JXsrNfJlzNXcsTqr9mbts9sVtUGGJLBC29JChlW4KZISd6MPx4PfF
         Mwu7M6CLV8SfP/qePSnJfCSkhTTnK+U4IiKBn/zYQaKrE8exo1prbwRv6QNtvGO6DllI
         FjemVMqmcyUAtxHuG0/XYZrznaMgASElkQQi/g+ZKWEaTh9Gi2e/DUtOXi3J2Cnx3/Px
         e9dA==
X-Gm-Message-State: ANoB5pn2mkRPXNgSB2omfNs1gx+Blm3tZLx2GyNTTXbFrzi2kI409neT
	UINb4ZUOCS702+yEbGIBA7Q=
X-Google-Smtp-Source: AA0mqf5kyd7O9Z2bUni4KE4HeakSPUmYiLtDLsMAABeqNZzbxLcNduSMzaOOHwW1pVRI0s/KYpzEVQ==
X-Received: by 2002:a17:906:1585:b0:7ad:84c7:502d with SMTP id k5-20020a170906158500b007ad84c7502dmr2879660ejd.177.1668705582464;
        Thu, 17 Nov 2022 09:19:42 -0800 (PST)
Received: from localhost.localdomain (user-5-173-65-115.play-internet.pl. [5.173.65.115])
        by smtp.googlemail.com with ESMTPSA id h5-20020a0564020e8500b00458a03203b1sm777561eda.31.2022.11.17.09.19.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Nov 2022 09:19:42 -0800 (PST)
From: Lukasz Wiecaszek <lukasz.wiecaszek@googlemail.com>
X-Google-Original-From: Lukasz Wiecaszek <lukasz.wiecaszek@gmail.com>
To: Gerd Hoffmann <kraxel@redhat.com>
Date: Thu, 17 Nov 2022 18:18:09 +0100
Message-Id: <20221117171810.75637-1-lukasz.wiecaszek@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: --
X-Rspamd-Queue-Id: 7796A3EF32
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[googlemail.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.218.47:from];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[];
	ARC_NA(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_FROM(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[googlemail.com:+];
	FREEMAIL_FROM(0.00)[googlemail.com];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[collabora.com,gmail.com,amd.com,linaro.org,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: NWR3ES7EEOZSR2AVAREFND4YCZRRAAEX
X-Message-ID-Hash: NWR3ES7EEOZSR2AVAREFND4YCZRRAAEX
X-MailFrom: lukasz.wiecaszek@googlemail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Dmitry Osipenko <dmitry.osipenko@collabora.com>, Lukasz Wiecaszek <lukasz.wiecaszek@gmail.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v5] udmabuf: add vmap and vunmap methods to udmabuf_ops
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NWR3ES7EEOZSR2AVAREFND4YCZRRAAEX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhlIHJlYXNvbiBiZWhpbmQgdGhhdCBwYXRjaCBpcyBhc3NvY2lhdGVkIHdpdGggdmlkZW9idWYy
IHN1YnN5c3RlbQ0KKG9yIG1vcmUgZ2VucmFsbHkgd2l0aCB2NGwyIGZyYW1ld29yaykgYW5kIHVz
ZXIgY3JlYXRlZA0KZG1hIGJ1ZmZlcnMgKHVkbWFidWYpLiBJbiBzb21lIGNpcmN1bXN0YW5jZXMN
CndoZW4gZGVhbGluZyB3aXRoIFY0TDJfTUVNT1JZX0RNQUJVRiBidWZmZXJzIHZpZGVvYnVmMiBz
dWJzeXN0ZW0NCndhbnRzIHRvIHVzZSBkbWFfYnVmX3ZtYXAoKSBtZXRob2Qgb24gdGhlIGF0dGFj
aGVkIGRtYSBidWZmZXIuDQpBcyB1ZG1hYnVmIGRvZXMgbm90IGhhdmUgLnZtYXAgb3BlcmF0aW9u
IGltcGxlbWVudGVkLA0Kc3VjaCBkbWFfYnVmX3ZtYXAoKSBuYXR1YWxseSBmYWlscy4NCg0Kdmlk
ZW9idWYyX2NvbW1vbjogX192YjJfcXVldWVfYWxsb2M6IGFsbG9jYXRlZCAzIGJ1ZmZlcnMsIDEg
cGxhbmUocykgZWFjaA0KdmlkZW9idWYyX2NvbW1vbjogX19wcmVwYXJlX2RtYWJ1ZjogYnVmZmVy
IGZvciBwbGFuZSAwIGNoYW5nZWQNCnZpZGVvYnVmMl9jb21tb246IF9fcHJlcGFyZV9kbWFidWY6
IGZhaWxlZCB0byBtYXAgZG1hYnVmIGZvciBwbGFuZSAwDQp2aWRlb2J1ZjJfY29tbW9uOiBfX2J1
Zl9wcmVwYXJlOiBidWZmZXIgcHJlcGFyYXRpb24gZmFpbGVkOiAtMTQNCg0KVGhlIHBhdGNoIGl0
c2VsZiBzZWVtcyB0byBiZSBzdHJpZ2hmb3J3YXJkLg0KSXQgYWRkcyBpbXBsZW1lbnRhdGlvbiBv
ZiAudm1hcCBhbmQgLnZ1bm1hcCBtZXRob2RzDQp0byAnc3RydWN0IGRtYV9idWZfb3BzIHVkbWFi
dWZfb3BzJy4NCi52bWFwIG1ldGhvZCBpdHNlbGYgdXNlcyB2bV9tYXBfcmFtKCkgdG8gbWFwIHBh
Z2VzIGxpbmVhcmx5DQppbnRvIHRoZSBrZXJuZWwgdmlydHVhbCBhZGRyZXNzIHNwYWNlLg0KLnZ1
bm1hcCByZW1vdmVzIG1hcHBpbmcgY3JlYXRlZCBlYXJsaWVyIGJ5IC52bWFwLg0KQWxsIGxvY2tp
bmcgYW5kICd2bWFwcGluZyBjb3VudGluZycgaXMgZG9uZSBpbiBkbWFfYnVmLmMNCnNvIGl0IHNl
ZW1zIHRvIGJlIHJlZHVuZGFudC91bm5lY2Vzc2FyeSBpbiAudm1hcC8udnVubWFwLg0KDQpSZXZp
ZXdlZC1ieTogRG1pdHJ5IE9zaXBlbmtvIDxkbWl0cnkub3NpcGVua29AY29sbGFib3JhLmNvbT4N
CkFja2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQpT
aWduZWQtb2ZmLWJ5OiBMdWthc3ogV2llY2FzemVrIDxsdWthc3oud2llY2FzemVrQGdtYWlsLmNv
bT4NCi0tLQ0KdjE6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LW1lZGlhLzIwMjIxMTEy
MDM1Mi5HN1dQQVNvUC1sa3BAaW50ZWwuY29tL1QvI3QNCnYyOiBodHRwczovL2xvcmUua2VybmVs
Lm9yZy9saW51eC1tZWRpYS8yMDIyMTExNDA1Mjk0NC5HQTcyNjRAdGhpbmtwYWQtcDcyL1QvI3QN
CnYzOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1tZWRpYS80ZjkyZTk1Zi1hMGRjLTRl
YWMtNGMwOC0wZGY4NWRlNzhhZTdAY29sbGFib3JhLmNvbS9ULyN0DQp2NDogaHR0cHM6Ly9sb3Jl
Lmtlcm5lbC5vcmcvbGludXgtbWVkaWEvOTcwZTc5OGQtZWEyNi01ZTFlLWFjZTgtNzkxNWE4NjZm
N2M3QGNvbGxhYm9yYS5jb20vVC8jdA0KDQp2NCAtPiB2NTogQWRkZWQgQWNrZWQtYnkgYW5kIFJl
dmlld2VkLWJ5IHRvIHRoZSBjb21taXQgbWVzc2FnZQ0KdjMgLT4gdjQ6IFJlbW92ZWQgbGluZS9p
bmZvICdyZXBvcnRlZCBieSBrZXJuZWwgdGVzdCByb2JvdCcNCnYyIC0+IHYzOiBBZGRlZCAudnVu
bWFwIHRvICdzdHJ1Y3QgZG1hX2J1Zl9vcHMgdWRtYWJ1Zl9vcHMnDQp2MSAtPiB2MjogUGF0Y2gg
cHJlcGFyZWQgYW5kIHRlc3RlZCBhZ2FpbnN0IDYuMS4wLXJjMisNCg0KIGRyaXZlcnMvZG1hLWJ1
Zi91ZG1hYnVmLmMgfCAyOCArKysrKysrKysrKysrKysrKysrKysrKysrKysrDQogMSBmaWxlIGNo
YW5nZWQsIDI4IGluc2VydGlvbnMoKykNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi91
ZG1hYnVmLmMgYi9kcml2ZXJzL2RtYS1idWYvdWRtYWJ1Zi5jDQppbmRleCAyODM4MTZmYmQ3MmYu
Ljc0MGQ2ZTQyNmVlOSAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi91ZG1hYnVmLmMNCisr
KyBiL2RyaXZlcnMvZG1hLWJ1Zi91ZG1hYnVmLmMNCkBAIC0xMyw2ICsxMyw4IEBADQogI2luY2x1
ZGUgPGxpbnV4L3NsYWIuaD4NCiAjaW5jbHVkZSA8bGludXgvdWRtYWJ1Zi5oPg0KICNpbmNsdWRl
IDxsaW51eC9odWdldGxiLmg+DQorI2luY2x1ZGUgPGxpbnV4L3ZtYWxsb2MuaD4NCisjaW5jbHVk
ZSA8bGludXgvaW9zeXMtbWFwLmg+DQogDQogc3RhdGljIGludCBsaXN0X2xpbWl0ID0gMTAyNDsN
CiBtb2R1bGVfcGFyYW0obGlzdF9saW1pdCwgaW50LCAwNjQ0KTsNCkBAIC02MCw2ICs2MiwzMCBA
QCBzdGF0aWMgaW50IG1tYXBfdWRtYWJ1ZihzdHJ1Y3QgZG1hX2J1ZiAqYnVmLCBzdHJ1Y3Qgdm1f
YXJlYV9zdHJ1Y3QgKnZtYSkNCiAJcmV0dXJuIDA7DQogfQ0KIA0KK3N0YXRpYyBpbnQgdm1hcF91
ZG1hYnVmKHN0cnVjdCBkbWFfYnVmICpidWYsIHN0cnVjdCBpb3N5c19tYXAgKm1hcCkNCit7DQor
CXN0cnVjdCB1ZG1hYnVmICp1YnVmID0gYnVmLT5wcml2Ow0KKwl2b2lkICp2YWRkcjsNCisNCisJ
ZG1hX3Jlc3ZfYXNzZXJ0X2hlbGQoYnVmLT5yZXN2KTsNCisNCisJdmFkZHIgPSB2bV9tYXBfcmFt
KHVidWYtPnBhZ2VzLCB1YnVmLT5wYWdlY291bnQsIC0xKTsNCisJaWYgKCF2YWRkcikNCisJCXJl
dHVybiAtRUlOVkFMOw0KKw0KKwlpb3N5c19tYXBfc2V0X3ZhZGRyKG1hcCwgdmFkZHIpOw0KKwly
ZXR1cm4gMDsNCit9DQorDQorc3RhdGljIHZvaWQgdnVubWFwX3VkbWFidWYoc3RydWN0IGRtYV9i
dWYgKmJ1Ziwgc3RydWN0IGlvc3lzX21hcCAqbWFwKQ0KK3sNCisJc3RydWN0IHVkbWFidWYgKnVi
dWYgPSBidWYtPnByaXY7DQorDQorCWRtYV9yZXN2X2Fzc2VydF9oZWxkKGJ1Zi0+cmVzdik7DQor
DQorCXZtX3VubWFwX3JhbShtYXAtPnZhZGRyLCB1YnVmLT5wYWdlY291bnQpOw0KK30NCisNCiBz
dGF0aWMgc3RydWN0IHNnX3RhYmxlICpnZXRfc2dfdGFibGUoc3RydWN0IGRldmljZSAqZGV2LCBz
dHJ1Y3QgZG1hX2J1ZiAqYnVmLA0KIAkJCQkgICAgIGVudW0gZG1hX2RhdGFfZGlyZWN0aW9uIGRp
cmVjdGlvbikNCiB7DQpAQCAtMTYyLDYgKzE4OCw4IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZG1h
X2J1Zl9vcHMgdWRtYWJ1Zl9vcHMgPSB7DQogCS51bm1hcF9kbWFfYnVmCSAgID0gdW5tYXBfdWRt
YWJ1ZiwNCiAJLnJlbGVhc2UJICAgPSByZWxlYXNlX3VkbWFidWYsDQogCS5tbWFwCQkgICA9IG1t
YXBfdWRtYWJ1ZiwNCisJLnZtYXAJCSAgID0gdm1hcF91ZG1hYnVmLA0KKwkudnVubWFwCQkgICA9
IHZ1bm1hcF91ZG1hYnVmLA0KIAkuYmVnaW5fY3B1X2FjY2VzcyAgPSBiZWdpbl9jcHVfdWRtYWJ1
ZiwNCiAJLmVuZF9jcHVfYWNjZXNzICAgID0gZW5kX2NwdV91ZG1hYnVmLA0KIH07DQotLSANCjIu
MjUuMQ0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5v
cmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxp
c3RzLmxpbmFyby5vcmcK
