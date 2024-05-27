Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7828F8CF9B0
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 May 2024 09:03:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1A76344848
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 May 2024 07:03:09 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	by lists.linaro.org (Postfix) with ESMTPS id A82543F38B
	for <linaro-mm-sig@lists.linaro.org>; Mon, 27 May 2024 07:02:58 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=NVSMDDOD;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.221.48 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-3588cb76276so372919f8f.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 27 May 2024 00:02:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716793378; x=1717398178; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RhTDv/X2MzeaoxY9UlTupOqZ4dzoGfDZJ1jJv+dJqEs=;
        b=NVSMDDODhqu3tkB5nI+uUTsHL1HIgx+LyMv37PTybtJws/GikeyIc9gGlIJKSSKXPS
         JLUaMpEPTDZivdCVGm1bSq+gkKnhB6z65tSW+C+pWAwQVlpOkjhxOKo9ntRL8A7UobrR
         gohWJTmcjXfshRK8yRS8IZamI9axw8YlGsFHpulh/VZ0ZK7wFQz2z2C9pynlerhylzPO
         3TaLYy0D+ddU6GfmtxP4a6Pjy40zZRk60VkBOX2Uj1UYOuF319x5lWonmagQvdAxsFvD
         qW+3lwl5IFIbwrwRWrLWuYR5O5lBrPdEzfxUfE0V7UjztdwdLlMS3pncv19tIF4ZJMxa
         GvfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716793378; x=1717398178;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RhTDv/X2MzeaoxY9UlTupOqZ4dzoGfDZJ1jJv+dJqEs=;
        b=j4KGErRK0Jf0PJ48Xc++HZYAi1JEGTIlO/u1Wycxm8/lcyVoluWFqMHzeowVAHHaf8
         MtvQUzHBDZ5qLCy03wR14+HR6IWHHOaGeMif35MXEruhsgMu8ruQpVezak8IMhI0JWXK
         pFwWPaecoLaXYJ/PzmMAqbFrOw4/e4dn/hGtlHZqBsbv2Yedkl+uur4Ga+llCCkehxJR
         AL2fJ7kfQTFm6ylYtM9NbviT2N/Mems/pZAscIvys6IpWcBpQ4c/8SLtSNZgOMXA0bb+
         UUfwBYnToS3P+L4u1CFVWWZt5Je169b/MIh2iOKxQegVej9Wi9halj0mnwUtOIQ3cbls
         sNVA==
X-Forwarded-Encrypted: i=1; AJvYcCXGKX6ghLqh+usgg9d06SnPqLi5qLFuYOgdli/vrQZUSMkpRGeq4Q+cqPCJtZRdA05cK1M76T8LQqTSvGCWRgH7xmpmzKISmHXnRV1a0qI=
X-Gm-Message-State: AOJu0YwS7wlhQ6IqXIdzf2b5SbldEuTebwN+nfdnhEHOVS4GQjELoCPy
	YKq9QyMBJ/kcklMcRUgPYxdK9rPnyehuL0s7hztF3IYk9yZHA6xg
X-Google-Smtp-Source: AGHT+IFMEQcPgs6+ChlvQyh9qDP2U9NYMEM8C1RNoY8/vGGrII0iOFxxNC1K3BaB2DJMg89FFSCHqA==
X-Received: by 2002:a5d:4d85:0:b0:354:ed11:a20a with SMTP id ffacd0b85a97d-354f75a0adbmr10598776f8f.29.1716793377308;
        Mon, 27 May 2024 00:02:57 -0700 (PDT)
Received: from [10.254.108.81] (munvpn.amd.com. [165.204.72.6])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3557a08aba8sm8089705f8f.42.2024.05.27.00.02.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 May 2024 00:02:56 -0700 (PDT)
Message-ID: <0b04b587-77a4-4ac4-8b15-6cde0f0c5f5a@gmail.com>
Date: Mon, 27 May 2024 09:02:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
 syzbot <syzbot+a225ee3df7e7f9372dbe@syzkaller.appspotmail.com>,
 syzkaller-bugs@googlegroups.com, Sumit Semwal <sumit.semwal@linaro.org>,
 Gustavo Padovan <gustavo@padovan.org>,
 Christian Konig <christian.koenig@amd.com>, Sean Paul
 <seanpaul@chromium.org>, Chris Wilson <chris@chris-wilson.co.uk>
References: <0000000000000946190610bf7bd5@google.com>
 <c2e46020-aaa6-4e06-bf73-f05823f913f0@I-love.SAKURA.ne.jp>
 <8980975d-87db-4d57-9e23-4fb7fbb62e7d@gmail.com>
 <0204a827-ca88-4cb6-839b-f4a637bcbf71@I-love.SAKURA.ne.jp>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <0204a827-ca88-4cb6-839b-f4a637bcbf71@I-love.SAKURA.ne.jp>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: A82543F38B
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.49 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[a225ee3df7e7f9372dbe];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.221.48:from];
	FREEMAIL_ENVFROM(0.00)[gmail.com]
Message-ID-Hash: 7OQK73UIDJMBFOXBKXTKKIOSTC6G5M4L
X-Message-ID-Hash: 7OQK73UIDJMBFOXBKXTKKIOSTC6G5M4L
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf/sw-sync: don't enable IRQ from sync_print_obj()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7OQK73UIDJMBFOXBKXTKKIOSTC6G5M4L/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjQuMDUuMjQgdW0gMTU6MjYgc2NocmllYiBUZXRzdW8gSGFuZGE6DQo+IE9uIDIwMjQvMDUv
MDcgMjI6MDksIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+PiBBbSAwNS4wNS4yNCB1bSAxNjow
OCBzY2hyaWViIFRldHN1byBIYW5kYToNCj4+PiBTaW5jZSBjb21taXQgYTZhYThmY2E0ZDc5ICgi
ZG1hLWJ1Zi9zdy1zeW5jOiBSZWR1Y2UgaXJxc2F2ZS9pcnFyZXN0b3JlIGZyb20NCj4+PiBrbm93
biBjb250ZXh0IikgYnkgZXJyb3IgcmVwbGFjZWQgc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgpIHdp
dGgNCj4+PiBzcGluX3VubG9ja19pcnEoKSBmb3IgYm90aCBzeW5jX2RlYnVnZnNfc2hvdygpIGFu
ZCBzeW5jX3ByaW50X29iaigpIGRlc3BpdGUNCj4+PiBzeW5jX3ByaW50X29iaigpIGlzIGNhbGxl
ZCBmcm9tIHN5bmNfZGVidWdmc19zaG93KCksIGxvY2tkZXAgY29tcGxhaW5zDQo+Pj4gaW5jb25z
aXN0ZW50IGxvY2sgc3RhdGUgd2FybmluZy4NCj4+Pg0KPj4+IFVzZSBwbGFpbiBzcGluX3tsb2Nr
LHVubG9ja30oKSBmb3Igc3luY19wcmludF9vYmooKSwgZm9yDQo+Pj4gc3luY19kZWJ1Z2ZzX3No
b3coKSBpcyBhbHJlYWR5IHVzaW5nIHNwaW5fe2xvY2ssdW5sb2NrfV9pcnEoKS4NCj4+Pg0KPj4+
IFJlcG9ydGVkLWJ5OiBzeXpib3QgPHN5emJvdCthMjI1ZWUzZGY3ZTdmOTM3MmRiZUBzeXprYWxs
ZXIuYXBwc3BvdG1haWwuY29tPg0KPj4+IENsb3NlczogaHR0cHM6Ly9zeXprYWxsZXIuYXBwc3Bv
dC5jb20vYnVnP2V4dGlkPWEyMjVlZTNkZjdlN2Y5MzcyZGJlDQo+Pj4gRml4ZXM6IGE2YWE4ZmNh
NGQ3OSAoImRtYS1idWYvc3ctc3luYzogUmVkdWNlIGlycXNhdmUvaXJxcmVzdG9yZSBmcm9tIGtu
b3duIGNvbnRleHQiKQ0KPj4+IFNpZ25lZC1vZmYtYnk6IFRldHN1byBIYW5kYSA8cGVuZ3Vpbi1r
ZXJuZWxASS1sb3ZlLlNBS1VSQS5uZS5qcD4NCj4+IFJldmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2
bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQo+IFRoYW5rIHlvdS4gV2hvIGNhbiB0YWtl
IHRoaXMgcGF0Y2g/DQoNCkkgcHVzaGVkIGl0IHRvIGRybS1taXNjLWZpeGVzLg0KDQpUaGFua3Ms
DQpDaHJpc3RpYW4uDQoNCj4NCj4+PiAtLS0NCj4+PiAgwqAgZHJpdmVycy9kbWEtYnVmL3N5bmNf
ZGVidWcuYyB8IDQgKystLQ0KPj4+ICDCoCAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCsp
LCAyIGRlbGV0aW9ucygtKQ0KPj4+DQo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9z
eW5jX2RlYnVnLmMgYi9kcml2ZXJzL2RtYS1idWYvc3luY19kZWJ1Zy5jDQo+Pj4gaW5kZXggMTAx
Mzk0ZjE2OTMwLi4yMzdiY2UyMWQxZTcgMTAwNjQ0DQo+Pj4gLS0tIGEvZHJpdmVycy9kbWEtYnVm
L3N5bmNfZGVidWcuYw0KPj4+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9zeW5jX2RlYnVnLmMNCj4+
PiBAQCAtMTEwLDEyICsxMTAsMTIgQEAgc3RhdGljIHZvaWQgc3luY19wcmludF9vYmooc3RydWN0
IHNlcV9maWxlICpzLCBzdHJ1Y3Qgc3luY190aW1lbGluZSAqb2JqKQ0KPj4+ICDCoCDCoMKgwqDC
oMKgIHNlcV9wcmludGYocywgIiVzOiAlZFxuIiwgb2JqLT5uYW1lLCBvYmotPnZhbHVlKTsNCj4+
PiAgwqAgLcKgwqDCoCBzcGluX2xvY2tfaXJxKCZvYmotPmxvY2spOw0KPj4+ICvCoMKgwqAgc3Bp
bl9sb2NrKCZvYmotPmxvY2spOyAvKiBDYWxsZXIgYWxyZWFkeSBkaXNhYmxlZCBJUlEuICovDQo+
Pj4gIMKgwqDCoMKgwqAgbGlzdF9mb3JfZWFjaChwb3MsICZvYmotPnB0X2xpc3QpIHsNCj4+PiAg
wqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBzeW5jX3B0ICpwdCA9IGNvbnRhaW5lcl9vZihwb3Ms
IHN0cnVjdCBzeW5jX3B0LCBsaW5rKTsNCj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgIHN5bmNfcHJp
bnRfZmVuY2UocywgJnB0LT5iYXNlLCBmYWxzZSk7DQo+Pj4gIMKgwqDCoMKgwqAgfQ0KPj4+IC3C
oMKgwqAgc3Bpbl91bmxvY2tfaXJxKCZvYmotPmxvY2spOw0KPj4+ICvCoMKgwqAgc3Bpbl91bmxv
Y2soJm9iai0+bG9jayk7DQo+Pj4gIMKgIH0NCj4+PiAgwqAgwqAgc3RhdGljIHZvaWQgc3luY19w
cmludF9zeW5jX2ZpbGUoc3RydWN0IHNlcV9maWxlICpzLA0KDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAt
LSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBl
bWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
