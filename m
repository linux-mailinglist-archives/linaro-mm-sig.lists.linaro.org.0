Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C5C92AA89CD
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  5 May 2025 00:42:53 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DE96D45948
	for <lists+linaro-mm-sig@lfdr.de>; Sun,  4 May 2025 22:42:52 +0000 (UTC)
Received: from mail-pl1-f202.google.com (mail-pl1-f202.google.com [209.85.214.202])
	by lists.linaro.org (Postfix) with ESMTPS id DABC7450C1
	for <linaro-mm-sig@lists.linaro.org>; Sun,  4 May 2025 22:42:35 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=HeFiMi5e;
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of 3W-0XaAkKDdwRHKCPAGCPEMMEJC.AMKJGL8PM-KK-QGEJGQRQ.JGL8PM.MPE@flex--tjmercier.bounces.google.com designates 209.85.214.202 as permitted sender) smtp.mailfrom=3W-0XaAkKDdwRHKCPAGCPEMMEJC.AMKJGL8PM-KK-QGEJGQRQ.JGL8PM.MPE@flex--tjmercier.bounces.google.com
Received: by mail-pl1-f202.google.com with SMTP id d9443c01a7336-2265a09dbfcso52146465ad.0
        for <linaro-mm-sig@lists.linaro.org>; Sun, 04 May 2025 15:42:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1746398555; x=1747003355; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ckXDF8xieUFQIQxzOmiI9sqno29aVoAtYHBanW2+fHw=;
        b=HeFiMi5eSJk3u5D5wpuJWW6cpCLvAmLhhuchP5kCwZ/116Kk54M7ew/TROqtxK2dQh
         yGTwC48nYnMhw0JTOAPEgfChNS4bo6sWZel4nwT7bz0fv2T5uYLrogItkIcbYe8dqMFk
         /jgG0Dr/7Tj5KwyDRgCKPEuqKVIlSPMoCyuH1lHj38YOxoCx7HPOj51yMz7lhU7kTuyO
         YLgf9NTTaiHUeuxa9c+L+DlkIJS8LvHVHn1s66YjTTelHIQ0vxXC4p3p/GmCSwVtnsbu
         N4ZUkZUaw8wZ0Ii0PB/Vhjcz7NoRLcQZKfceytgRsYty66coa+dKneIDnVY/FiTSyXs8
         ty3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746398555; x=1747003355;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ckXDF8xieUFQIQxzOmiI9sqno29aVoAtYHBanW2+fHw=;
        b=FLPdJL9SxpdXyEIgvEc6YekUB7zN36Tk+fdOCn9ecIWtG+7UezAvyEky+5qGS8LBxl
         a2OHVBHc9w51qe8OcwI32JBC0mPvPd3ui2l7Py34XA7uthQGR6opISz9ecNoVUVtTvpP
         +mPmGjjeUN/FMD0UjFgu9Z4HAUWYXulVrITMAE0r/rQbI4XsduBOzrG3lwsJEbDl2Ep2
         KvLlKFxZbJpnS4//WpLMdFkQK2HATbN19Z1WfjWOQusOCoWBL6Pkh3/G6bOMHTg9QddA
         IAmINZ1dPbnqNWe6WcUKeugddQa78ibTurdGXiT+uelYVLzviBw5i732rkYaVlzsCOND
         Lczw==
X-Forwarded-Encrypted: i=1; AJvYcCW+5kYp2h2EEqLHojb3LtKC/hTKYi8ajJNjBPwYNOkLoJ7qeAolCZ5tO9Cl9n4NQoT6ahRLaEfFSG1WCjJz@lists.linaro.org
X-Gm-Message-State: AOJu0YyLuMBbzWqZ7HGpGJ8YYPailb00WKJjsl54rtNcPXXK/Dj3umiQ
	Je1NGhCMcWWvngHn/Mi823uMsQq0b9hHhkTnGJ3lvu5HZ5Y8Xw/BcS0mT22xdWt9LSmAele/i+f
	bxAZOWqRIHR92qw==
X-Google-Smtp-Source: AGHT+IEkWjaqnLMdDQbZ+f0poRIDMkyZsZ3KlGS8VJQg5pRE9CqcoIxxzUWp4c/vchXpX5iXi013MrjaGhiu8cc=
X-Received: from plkp1.prod.google.com ([2002:a17:902:6b81:b0:220:ea57:34e3])
 (user=tjmercier job=prod-delivery.src-stubby-dispatcher) by
 2002:a17:902:ce88:b0:223:668d:eba9 with SMTP id d9443c01a7336-22e1e8e9d97mr88068775ad.10.1746398555098;
 Sun, 04 May 2025 15:42:35 -0700 (PDT)
Date: Sun,  4 May 2025 22:41:37 +0000
In-Reply-To: <20250504224149.1033867-1-tjmercier@google.com>
Mime-Version: 1.0
References: <20250504224149.1033867-1-tjmercier@google.com>
X-Mailer: git-send-email 2.49.0.906.g1f30a19c02-goog
Message-ID: <20250504224149.1033867-2-tjmercier@google.com>
From: "T.J. Mercier" <tjmercier@google.com>
To: sumit.semwal@linaro.org, christian.koenig@amd.com, ast@kernel.org,
	daniel@iogearbox.net, andrii@kernel.org, martin.lau@linux.dev,
	skhan@linuxfoundation.org, song@kernel.org, alexei.starovoitov@gmail.com
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: DABC7450C1
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.80 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	MV_CASE(0.50)[];
	FORGED_SENDER(0.30)[tjmercier@google.com,3W-0XaAkKDdwRHKCPAGCPEMMEJC.AMKJGL8PM-KK-QGEJGQRQ.JGL8PM.MPE@flex--tjmercier.bounces.google.com];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.214.202:from];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[linaro.org,amd.com,kernel.org,iogearbox.net,linux.dev,linuxfoundation.org,gmail.com];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,google.com,ffwll.ch,lwn.net,gmail.com,linux.dev,kernel.org,fomichev.me,fb.com];
	DKIM_TRACE(0.00)[google.com:+];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tjmercier@google.com,3W-0XaAkKDdwRHKCPAGCPEMMEJC.AMKJGL8PM-KK-QGEJGQRQ.JGL8PM.MPE@flex--tjmercier.bounces.google.com];
	RCPT_COUNT_TWELVE(0.00)[27];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TAGGED_RCPT(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: RBZI2N73MMF53ZSGPHJZDWLXZ37UHW2B
X-Message-ID-Hash: RBZI2N73MMF53ZSGPHJZDWLXZ37UHW2B
X-MailFrom: 3W-0XaAkKDdwRHKCPAGCPEMMEJC.AMKJGL8PM-KK-QGEJGQRQ.JGL8PM.MPE@flex--tjmercier.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, bpf@vger.kernel.org, linux-kselftest@vger.kernel.org, android-mm@google.com, simona@ffwll.ch, corbet@lwn.net, eddyz87@gmail.com, yonghong.song@linux.dev, john.fastabend@gmail.com, kpsingh@kernel.org, sdf@fomichev.me, jolsa@kernel.org, mykolal@fb.com, "T.J. Mercier" <tjmercier@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 1/6] dma-buf: Rename and expose debugfs symbols
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RBZI2N73MMF53ZSGPHJZDWLXZ37UHW2B/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RXhwb3NlIHRoZSBkZWJ1Z2ZzIGxpc3QgYW5kIG11dGV4IHNvIHRoZXkgYXJlIHVzYWJsZSBmb3Ig
dGhlIGNyZWF0aW9uIG9mDQphIEJQRiBpdGVyYXRvciBmb3IgZG1hYnVmcyB3aXRob3V0IHRoZSBu
ZWVkIGZvciBDT05GSUdfREVCVUdfRlMuIFJlbmFtZQ0KdGhlIHN5bWJvbHMgc28gaXQncyBjbGVh
ciBkZWJ1Z2ZzIGlzIG5vdCByZXF1aXJlZCwgYW5kIHRoYXQgdGhlIGxpc3QNCmNvbnRhaW5zIGRt
YWJ1ZnMgYW5kIG5vdCBzb21lIG90aGVyIHR5cGUuDQoNClNpZ25lZC1vZmYtYnk6IFQuSi4gTWVy
Y2llciA8dGptZXJjaWVyQGdvb2dsZS5jb20+DQotLS0NCnYyOiBNYWtlIHRoZSBETUEgYnVmZmVy
IGxpc3QgaW5kZXBlbmRlbnQgb2YgQ09ORklHX0RFQlVHX0ZTIHBlciBDaHJpc3RpYW4gS8O2bmln
DQogZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyB8IDQwICsrKysrKysrKysrKysrKy0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLQ0KIGluY2x1ZGUvbGludXgvZG1hLWJ1Zi5oICAgfCAgNiArKysrLS0N
CiAyIGZpbGVzIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKyksIDI3IGRlbGV0aW9ucygtKQ0KDQpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9k
bWEtYnVmLmMNCmluZGV4IDViYWE4M2I4NTUxNS4uNzI2MGJkZDc3Yzc1IDEwMDY0NA0KLS0tIGEv
ZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYu
Yw0KQEAgLTM1LDM1ICszNSwyNSBAQA0KIA0KIHN0YXRpYyBpbmxpbmUgaW50IGlzX2RtYV9idWZf
ZmlsZShzdHJ1Y3QgZmlsZSAqKTsNCiANCi0jaWYgSVNfRU5BQkxFRChDT05GSUdfREVCVUdfRlMp
DQotc3RhdGljIERFRklORV9NVVRFWChkZWJ1Z2ZzX2xpc3RfbXV0ZXgpOw0KLXN0YXRpYyBMSVNU
X0hFQUQoZGVidWdmc19saXN0KTsNCitERUZJTkVfTVVURVgoZG1hYnVmX2xpc3RfbXV0ZXgpOw0K
K0xJU1RfSEVBRChkbWFidWZfbGlzdCk7DQogDQotc3RhdGljIHZvaWQgX19kbWFfYnVmX2RlYnVn
ZnNfbGlzdF9hZGQoc3RydWN0IGRtYV9idWYgKmRtYWJ1ZikNCitzdGF0aWMgdm9pZCBfX2RtYV9i
dWZfbGlzdF9hZGQoc3RydWN0IGRtYV9idWYgKmRtYWJ1ZikNCiB7DQotCW11dGV4X2xvY2soJmRl
YnVnZnNfbGlzdF9tdXRleCk7DQotCWxpc3RfYWRkKCZkbWFidWYtPmxpc3Rfbm9kZSwgJmRlYnVn
ZnNfbGlzdCk7DQotCW11dGV4X3VubG9jaygmZGVidWdmc19saXN0X211dGV4KTsNCisJbXV0ZXhf
bG9jaygmZG1hYnVmX2xpc3RfbXV0ZXgpOw0KKwlsaXN0X2FkZCgmZG1hYnVmLT5saXN0X25vZGUs
ICZkbWFidWZfbGlzdCk7DQorCW11dGV4X3VubG9jaygmZG1hYnVmX2xpc3RfbXV0ZXgpOw0KIH0N
CiANCi1zdGF0aWMgdm9pZCBfX2RtYV9idWZfZGVidWdmc19saXN0X2RlbChzdHJ1Y3QgZG1hX2J1
ZiAqZG1hYnVmKQ0KK3N0YXRpYyB2b2lkIF9fZG1hX2J1Zl9saXN0X2RlbChzdHJ1Y3QgZG1hX2J1
ZiAqZG1hYnVmKQ0KIHsNCiAJaWYgKCFkbWFidWYpDQogCQlyZXR1cm47DQogDQotCW11dGV4X2xv
Y2soJmRlYnVnZnNfbGlzdF9tdXRleCk7DQorCW11dGV4X2xvY2soJmRtYWJ1Zl9saXN0X211dGV4
KTsNCiAJbGlzdF9kZWwoJmRtYWJ1Zi0+bGlzdF9ub2RlKTsNCi0JbXV0ZXhfdW5sb2NrKCZkZWJ1
Z2ZzX2xpc3RfbXV0ZXgpOw0KKwltdXRleF91bmxvY2soJmRtYWJ1Zl9saXN0X211dGV4KTsNCiB9
DQotI2Vsc2UNCi1zdGF0aWMgdm9pZCBfX2RtYV9idWZfZGVidWdmc19saXN0X2FkZChzdHJ1Y3Qg
ZG1hX2J1ZiAqZG1hYnVmKQ0KLXsNCi19DQotDQotc3RhdGljIHZvaWQgX19kbWFfYnVmX2RlYnVn
ZnNfbGlzdF9kZWwoc3RydWN0IGRtYV9idWYgKmRtYWJ1ZikNCi17DQotfQ0KLSNlbmRpZg0KIA0K
IHN0YXRpYyBjaGFyICpkbWFidWZmc19kbmFtZShzdHJ1Y3QgZGVudHJ5ICpkZW50cnksIGNoYXIg
KmJ1ZmZlciwgaW50IGJ1ZmxlbikNCiB7DQpAQCAtMTE1LDcgKzEwNSw3IEBAIHN0YXRpYyBpbnQg
ZG1hX2J1Zl9maWxlX3JlbGVhc2Uoc3RydWN0IGlub2RlICppbm9kZSwgc3RydWN0IGZpbGUgKmZp
bGUpDQogCWlmICghaXNfZG1hX2J1Zl9maWxlKGZpbGUpKQ0KIAkJcmV0dXJuIC1FSU5WQUw7DQog
DQotCV9fZG1hX2J1Zl9kZWJ1Z2ZzX2xpc3RfZGVsKGZpbGUtPnByaXZhdGVfZGF0YSk7DQorCV9f
ZG1hX2J1Zl9saXN0X2RlbChmaWxlLT5wcml2YXRlX2RhdGEpOw0KIA0KIAlyZXR1cm4gMDsNCiB9
DQpAQCAtNjg5LDcgKzY3OSw3IEBAIHN0cnVjdCBkbWFfYnVmICpkbWFfYnVmX2V4cG9ydChjb25z
dCBzdHJ1Y3QgZG1hX2J1Zl9leHBvcnRfaW5mbyAqZXhwX2luZm8pDQogCWZpbGUtPmZfcGF0aC5k
ZW50cnktPmRfZnNkYXRhID0gZG1hYnVmOw0KIAlkbWFidWYtPmZpbGUgPSBmaWxlOw0KIA0KLQlf
X2RtYV9idWZfZGVidWdmc19saXN0X2FkZChkbWFidWYpOw0KKwlfX2RtYV9idWZfbGlzdF9hZGQo
ZG1hYnVmKTsNCiANCiAJcmV0dXJuIGRtYWJ1ZjsNCiANCkBAIC0xNjMwLDcgKzE2MjAsNyBAQCBz
dGF0aWMgaW50IGRtYV9idWZfZGVidWdfc2hvdyhzdHJ1Y3Qgc2VxX2ZpbGUgKnMsIHZvaWQgKnVu
dXNlZCkNCiAJc2l6ZV90IHNpemUgPSAwOw0KIAlpbnQgcmV0Ow0KIA0KLQlyZXQgPSBtdXRleF9s
b2NrX2ludGVycnVwdGlibGUoJmRlYnVnZnNfbGlzdF9tdXRleCk7DQorCXJldCA9IG11dGV4X2xv
Y2tfaW50ZXJydXB0aWJsZSgmZG1hYnVmX2xpc3RfbXV0ZXgpOw0KIA0KIAlpZiAocmV0KQ0KIAkJ
cmV0dXJuIHJldDsNCkBAIC0xNjM5LDcgKzE2MjksNyBAQCBzdGF0aWMgaW50IGRtYV9idWZfZGVi
dWdfc2hvdyhzdHJ1Y3Qgc2VxX2ZpbGUgKnMsIHZvaWQgKnVudXNlZCkNCiAJc2VxX3ByaW50Zihz
LCAiJS04c1x0JS04c1x0JS04c1x0JS04c1x0ZXhwX25hbWVcdCUtOHNcdG5hbWVcbiIsDQogCQkg
ICAic2l6ZSIsICJmbGFncyIsICJtb2RlIiwgImNvdW50IiwgImlubyIpOw0KIA0KLQlsaXN0X2Zv
cl9lYWNoX2VudHJ5KGJ1Zl9vYmosICZkZWJ1Z2ZzX2xpc3QsIGxpc3Rfbm9kZSkgew0KKwlsaXN0
X2Zvcl9lYWNoX2VudHJ5KGJ1Zl9vYmosICZkbWFidWZfbGlzdCwgbGlzdF9ub2RlKSB7DQogDQog
CQlyZXQgPSBkbWFfcmVzdl9sb2NrX2ludGVycnVwdGlibGUoYnVmX29iai0+cmVzdiwgTlVMTCk7
DQogCQlpZiAocmV0KQ0KQEAgLTE2NzYsMTEgKzE2NjYsMTEgQEAgc3RhdGljIGludCBkbWFfYnVm
X2RlYnVnX3Nob3coc3RydWN0IHNlcV9maWxlICpzLCB2b2lkICp1bnVzZWQpDQogDQogCXNlcV9w
cmludGYocywgIlxuVG90YWwgJWQgb2JqZWN0cywgJXp1IGJ5dGVzXG4iLCBjb3VudCwgc2l6ZSk7
DQogDQotCW11dGV4X3VubG9jaygmZGVidWdmc19saXN0X211dGV4KTsNCisJbXV0ZXhfdW5sb2Nr
KCZkbWFidWZfbGlzdF9tdXRleCk7DQogCXJldHVybiAwOw0KIA0KIGVycm9yX3VubG9jazoNCi0J
bXV0ZXhfdW5sb2NrKCZkZWJ1Z2ZzX2xpc3RfbXV0ZXgpOw0KKwltdXRleF91bmxvY2soJmRtYWJ1
Zl9saXN0X211dGV4KTsNCiAJcmV0dXJuIHJldDsNCiB9DQogDQpkaWZmIC0tZ2l0IGEvaW5jbHVk
ZS9saW51eC9kbWEtYnVmLmggYi9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaA0KaW5kZXggMzYyMTZk
MjhkOGJkLi5lYmNkMjA4MjcyYmYgMTAwNjQ0DQotLS0gYS9pbmNsdWRlL2xpbnV4L2RtYS1idWYu
aA0KKysrIGIvaW5jbHVkZS9saW51eC9kbWEtYnVmLmgNCkBAIC0xOCw2ICsxOCw3IEBADQogI2lu
Y2x1ZGUgPGxpbnV4L2Vyci5oPg0KICNpbmNsdWRlIDxsaW51eC9zY2F0dGVybGlzdC5oPg0KICNp
bmNsdWRlIDxsaW51eC9saXN0Lmg+DQorI2luY2x1ZGUgPGxpbnV4L211dGV4Lmg+DQogI2luY2x1
ZGUgPGxpbnV4L2RtYS1tYXBwaW5nLmg+DQogI2luY2x1ZGUgPGxpbnV4L2ZzLmg+DQogI2luY2x1
ZGUgPGxpbnV4L2RtYS1mZW5jZS5oPg0KQEAgLTM3MCwxMCArMzcxLDggQEAgc3RydWN0IGRtYV9i
dWYgew0KIAkgKi8NCiAJc3RydWN0IG1vZHVsZSAqb3duZXI7DQogDQotI2lmIElTX0VOQUJMRUQo
Q09ORklHX0RFQlVHX0ZTKQ0KIAkvKiogQGxpc3Rfbm9kZTogbm9kZSBmb3IgZG1hX2J1ZiBhY2Nv
dW50aW5nIGFuZCBkZWJ1Z2dpbmcuICovDQogCXN0cnVjdCBsaXN0X2hlYWQgbGlzdF9ub2RlOw0K
LSNlbmRpZg0KIA0KIAkvKiogQHByaXY6IGV4cG9ydGVyIHNwZWNpZmljIHByaXZhdGUgZGF0YSBm
b3IgdGhpcyBidWZmZXIgb2JqZWN0LiAqLw0KIAl2b2lkICpwcml2Ow0KQEAgLTU1Niw2ICs1NTUs
OSBAQCBzdHJ1Y3QgZG1hX2J1Zl9leHBvcnRfaW5mbyB7DQogCXN0cnVjdCBkbWFfYnVmX2V4cG9y
dF9pbmZvIG5hbWUgPSB7IC5leHBfbmFtZSA9IEtCVUlMRF9NT0ROQU1FLCBcDQogCQkJCQkgLm93
bmVyID0gVEhJU19NT0RVTEUgfQ0KIA0KK2V4dGVybiBzdHJ1Y3QgbGlzdF9oZWFkIGRtYWJ1Zl9s
aXN0Ow0KK2V4dGVybiBzdHJ1Y3QgbXV0ZXggZG1hYnVmX2xpc3RfbXV0ZXg7DQorDQogLyoqDQog
ICogZ2V0X2RtYV9idWYgLSBjb252ZW5pZW5jZSB3cmFwcGVyIGZvciBnZXRfZmlsZS4NCiAgKiBA
ZG1hYnVmOglbaW5dCXBvaW50ZXIgdG8gZG1hX2J1Zg0KLS0gDQoyLjQ5LjAuOTA2LmcxZjMwYTE5
YzAyLWdvb2cNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2
ZUBsaXN0cy5saW5hcm8ub3JnCg==
