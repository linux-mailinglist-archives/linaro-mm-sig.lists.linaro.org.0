Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D44618BE317
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 May 2024 15:10:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AE1473F346
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 May 2024 13:10:14 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	by lists.linaro.org (Postfix) with ESMTPS id ED2EC3F02C
	for <linaro-mm-sig@lists.linaro.org>; Tue,  7 May 2024 13:10:03 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b="I/5Y4BVx";
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.221.44 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-34e0d8b737eso3181877f8f.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 07 May 2024 06:10:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715087403; x=1715692203; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zWhuKkDlnxPJbDbjOht3LPyoadKgxR6Zdq3ESsD59zE=;
        b=I/5Y4BVxmy7iik+tB2aiElNxvFo79MDZzeS8713h2AaL6l3dIscDLIWdPTVvf5N9ST
         nNHQfUtzjdW/OXD5WUYrmsooMH9YGxi2WukfgZUasg9osOT+n4WWnyKO9gF4MfD/ppsD
         PshVZQE7nukL2TxVMJ61Xg5tTNSaC17CAMEx4iz6tCMDp3dziOWW6BBt6Y0L1kctPrxv
         9rk1wk2NldWgaLzxjCrj+kBTKLGLq7LfeI+k79ykWr8X0rupY9TR1uQ4i18cgawggGyi
         PIOVL2Aod5aY4athbWrHJLmdrInD40caLJj34oCOmXPGV/G7Q9i9ZDAyaDGR49wZjjtE
         k+Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715087403; x=1715692203;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zWhuKkDlnxPJbDbjOht3LPyoadKgxR6Zdq3ESsD59zE=;
        b=N+HZ6Nc4dDcfFtCNFKoMw9SvNRwQVI2OzIdyxaFF3j6Q4XKexpGNRXeryjtGxrKN2P
         W4Ehgx0BRtFFbcFBu75sDGrbo5Bh766Ykh4/TvWBxLKar/vAWp/7+woOvM/MgffuBIu1
         qaDoJzkBTP6ay8S2S2JU/RXymSl3x1EaR3AnLSVD9d268lbGor13iGRGflmeEWte+0mp
         6+O9PA/lbluJQepYkofxsDWKu5hbfHVX6W5KMWeXXN+90keMkmj+ZvneJ7XYi9Lh99/L
         86C+qAx429dYnVRH/4IA85aEUlLy1nQkKA9s0s5Qt3dQeEhgLW3EmlDcgT94JD4Dxw2Y
         6v+w==
X-Forwarded-Encrypted: i=1; AJvYcCUox5+aGSMwG7Rfg5W7V8fXFP3RBK5h32yv2mCwXQoNGccXjU6Pd5CUgzJSq2e9FUFPrahFtPngVbhLraONU9hIGya2WEAGIKoDFO/6jcI=
X-Gm-Message-State: AOJu0Yx4CSVmMb2RoYz13pf/Qj9B4tNS6nm3AHwyVcsAmpJLKYQpKqhU
	g3CuemlaL3L9JWrj5zYlf0UIe/mKtsgXAZpLphjenCPJj73VdILe
X-Google-Smtp-Source: AGHT+IFVS0ZEkqevW9dP+NzuwvDByGtiCtcnyqB2hI1UWywKm3iKHmcKd7uoqFxyB8I12UOS6k4zcw==
X-Received: by 2002:a05:6000:901:b0:34c:ce6a:96fa with SMTP id ffacd0b85a97d-34f81f39e52mr2553850f8f.34.1715087402694;
        Tue, 07 May 2024 06:10:02 -0700 (PDT)
Received: from [10.254.108.81] (munvpn.amd.com. [165.204.72.6])
        by smtp.gmail.com with ESMTPSA id k8-20020a05600c1c8800b00418a6d62ad0sm23528898wms.34.2024.05.07.06.10.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 May 2024 06:10:02 -0700 (PDT)
Message-ID: <8980975d-87db-4d57-9e23-4fb7fbb62e7d@gmail.com>
Date: Tue, 7 May 2024 15:09:56 +0200
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
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <c2e46020-aaa6-4e06-bf73-f05823f913f0@I-love.SAKURA.ne.jp>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: ED2EC3F02C
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.49 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	TAGGED_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DNSWL_BLOCKED(0.00)[209.85.221.44:from,165.204.72.6:received];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.221.44:from];
	TAGGED_RCPT(0.00)[a225ee3df7e7f9372dbe];
	FREEMAIL_ENVFROM(0.00)[gmail.com]
X-Rspamd-Action: no action
Message-ID-Hash: 3IPQ6WHQ672ZJGXSCUFG3Z7HRUB74O4D
X-Message-ID-Hash: 3IPQ6WHQ672ZJGXSCUFG3Z7HRUB74O4D
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf/sw-sync: don't enable IRQ from sync_print_obj()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3IPQ6WHQ672ZJGXSCUFG3Z7HRUB74O4D/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMDUuMDUuMjQgdW0gMTY6MDggc2NocmllYiBUZXRzdW8gSGFuZGE6DQo+IFNpbmNlIGNvbW1p
dCBhNmFhOGZjYTRkNzkgKCJkbWEtYnVmL3N3LXN5bmM6IFJlZHVjZSBpcnFzYXZlL2lycXJlc3Rv
cmUgZnJvbQ0KPiBrbm93biBjb250ZXh0IikgYnkgZXJyb3IgcmVwbGFjZWQgc3Bpbl91bmxvY2tf
aXJxcmVzdG9yZSgpIHdpdGgNCj4gc3Bpbl91bmxvY2tfaXJxKCkgZm9yIGJvdGggc3luY19kZWJ1
Z2ZzX3Nob3coKSBhbmQgc3luY19wcmludF9vYmooKSBkZXNwaXRlDQo+IHN5bmNfcHJpbnRfb2Jq
KCkgaXMgY2FsbGVkIGZyb20gc3luY19kZWJ1Z2ZzX3Nob3coKSwgbG9ja2RlcCBjb21wbGFpbnMN
Cj4gaW5jb25zaXN0ZW50IGxvY2sgc3RhdGUgd2FybmluZy4NCj4NCj4gVXNlIHBsYWluIHNwaW5f
e2xvY2ssdW5sb2NrfSgpIGZvciBzeW5jX3ByaW50X29iaigpLCBmb3INCj4gc3luY19kZWJ1Z2Zz
X3Nob3coKSBpcyBhbHJlYWR5IHVzaW5nIHNwaW5fe2xvY2ssdW5sb2NrfV9pcnEoKS4NCj4NCj4g
UmVwb3J0ZWQtYnk6IHN5emJvdCA8c3l6Ym90K2EyMjVlZTNkZjdlN2Y5MzcyZGJlQHN5emthbGxl
ci5hcHBzcG90bWFpbC5jb20+DQo+IENsb3NlczogaHR0cHM6Ly9zeXprYWxsZXIuYXBwc3BvdC5j
b20vYnVnP2V4dGlkPWEyMjVlZTNkZjdlN2Y5MzcyZGJlDQo+IEZpeGVzOiBhNmFhOGZjYTRkNzkg
KCJkbWEtYnVmL3N3LXN5bmM6IFJlZHVjZSBpcnFzYXZlL2lycXJlc3RvcmUgZnJvbSBrbm93biBj
b250ZXh0IikNCj4gU2lnbmVkLW9mZi1ieTogVGV0c3VvIEhhbmRhIDxwZW5ndWluLWtlcm5lbEBJ
LWxvdmUuU0FLVVJBLm5lLmpwPg0KDQpSZXZpZXdlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hy
aXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KDQo+IC0tLQ0KPiAgIGRyaXZlcnMvZG1hLWJ1Zi9zeW5j
X2RlYnVnLmMgfCA0ICsrLS0NCj4gICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAy
IGRlbGV0aW9ucygtKQ0KPg0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL3N5bmNfZGVi
dWcuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9zeW5jX2RlYnVnLmMNCj4gaW5kZXggMTAxMzk0ZjE2OTMw
Li4yMzdiY2UyMWQxZTcgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9zeW5jX2RlYnVn
LmMNCj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL3N5bmNfZGVidWcuYw0KPiBAQCAtMTEwLDEyICsx
MTAsMTIgQEAgc3RhdGljIHZvaWQgc3luY19wcmludF9vYmooc3RydWN0IHNlcV9maWxlICpzLCBz
dHJ1Y3Qgc3luY190aW1lbGluZSAqb2JqKQ0KPiAgIA0KPiAgIAlzZXFfcHJpbnRmKHMsICIlczog
JWRcbiIsIG9iai0+bmFtZSwgb2JqLT52YWx1ZSk7DQo+ICAgDQo+IC0Jc3Bpbl9sb2NrX2lycSgm
b2JqLT5sb2NrKTsNCj4gKwlzcGluX2xvY2soJm9iai0+bG9jayk7IC8qIENhbGxlciBhbHJlYWR5
IGRpc2FibGVkIElSUS4gKi8NCj4gICAJbGlzdF9mb3JfZWFjaChwb3MsICZvYmotPnB0X2xpc3Qp
IHsNCj4gICAJCXN0cnVjdCBzeW5jX3B0ICpwdCA9IGNvbnRhaW5lcl9vZihwb3MsIHN0cnVjdCBz
eW5jX3B0LCBsaW5rKTsNCj4gICAJCXN5bmNfcHJpbnRfZmVuY2UocywgJnB0LT5iYXNlLCBmYWxz
ZSk7DQo+ICAgCX0NCj4gLQlzcGluX3VubG9ja19pcnEoJm9iai0+bG9jayk7DQo+ICsJc3Bpbl91
bmxvY2soJm9iai0+bG9jayk7DQo+ICAgfQ0KPiAgIA0KPiAgIHN0YXRpYyB2b2lkIHN5bmNfcHJp
bnRfc3luY19maWxlKHN0cnVjdCBzZXFfZmlsZSAqcywNCg0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0g
bGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1h
aWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
