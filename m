Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 63E2E7CF7BD
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Oct 2023 13:58:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 722C63F026
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Oct 2023 11:58:41 +0000 (UTC)
Received: from mail-oo1-f80.google.com (mail-oo1-f80.google.com [209.85.161.80])
	by lists.linaro.org (Postfix) with ESMTPS id 5FA093EF1D
	for <linaro-mm-sig@lists.linaro.org>; Sun, 15 Oct 2023 03:37:48 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of 3i14rZQkbACYUabMCNNGTCRRKF.IQQINGWUGTEQPVGPV.EQO@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com designates 209.85.161.80 as permitted sender) smtp.mailfrom=3i14rZQkbACYUabMCNNGTCRRKF.IQQINGWUGTEQPVGPV.EQO@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com;
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=appspotmail.com (policy=none)
Received: by mail-oo1-f80.google.com with SMTP id 006d021491bc7-57b74fbbd6eso4198199eaf.0
        for <linaro-mm-sig@lists.linaro.org>; Sat, 14 Oct 2023 20:37:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697341067; x=1697945867;
        h=content-transfer-encoding:to:from:subject:message-id:date
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=foF8w8a+Sc3aMYEjJANWw1plNPjcJQbPnL865dnxUWo=;
        b=rWHvyVAbDTIXFYkBFrhtPj2avYuo8SlHV3ECmnp7FkriB4mkly9csvNJD6GozNrvg4
         Z4QrOaOn+aBXPiq1elCXREzJJtZ7SQ2wMxmnr/WpA0ntg1h9AXOZnJfC13ehQV+O7/xG
         cgvJzRg8sdHM/GVJL68hseepzd+rdX+92ucwjJkIuoKrhgTbVzHlbSZhT7GmwbPq/jUF
         LGxyjZxM348CphqGx/YVeB2KSj+ic/v7Cv6vC8qMoChtEqj6GAba1zlZltMfSMht07eW
         Nsm/ZwHqZT0hqo97kn2qkeVjDVVY0yLoMDiVQCFwMD084cYtnhPgEEcdl0OoFIfs6Nqh
         dXhQ==
X-Gm-Message-State: AOJu0YyA61o0LeHQ5zMXGRUEDcYEbajRUrfSWXKwToxQktwfwI3/t/Ek
	SJ8+Dj1iZUIhdSJ6rQO1vYQEyKKjPmlWRH4i2og5OQkBVI7s
X-Google-Smtp-Source: AGHT+IGsyZ0CVZPQIKSBXE2Ngyt2bDz2pyzbCDr2Xsmei5tIBjt7D/9dE16CAQNT9YtnIs7GTSb7j6pgJXBjgsVW/asO6sA1JIcf
MIME-Version: 1.0
X-Received: by 2002:a05:6808:2091:b0:3a1:c163:6022 with SMTP id
 s17-20020a056808209100b003a1c1636022mr1741075oiw.4.1697341067805; Sat, 14 Oct
 2023 20:37:47 -0700 (PDT)
Date: Sat, 14 Oct 2023 20:37:47 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000068c7730607b903b7@google.com>
From: syzbot <syzbot+0da81ccba2345eeb7f48@syzkaller.appspotmail.com>
To: airlied@gmail.com, christian.koenig@amd.com, daniel@ffwll.ch,
	dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
	maarten.lankhorst@linux.intel.com, mripard@kernel.org,
	sumit.semwal@linaro.org, syzkaller-bugs@googlegroups.com, tzimmermann@suse.de
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	URI_HIDDEN_PATH(1.00)[https://syzkaller.appspot.com/x/.config?x=32d0b9b42ceb8b10];
	FORGED_SENDER(0.30)[syzbot@syzkaller.appspotmail.com,3i14rZQkbACYUabMCNNGTCRRKF.IQQINGWUGTEQPVGPV.EQO@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.161.80:from];
	DMARC_POLICY_SOFTFAIL(0.10)[appspotmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	REDIRECTOR_URL(0.00)[goo.gl];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	NEURAL_SPAM(0.00)[0.999];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[syzbot@syzkaller.appspotmail.com,3i14rZQkbACYUabMCNNGTCRRKF.IQQINGWUGTEQPVGPV.EQO@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com];
	FREEMAIL_TO(0.00)[gmail.com,amd.com,ffwll.ch,lists.freedesktop.org,lists.linaro.org,vger.kernel.org,linux.intel.com,kernel.org,linaro.org,googlegroups.com,suse.de];
	TAGGED_FROM(0.00)[0da81ccba2345eeb7f48];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	R_DKIM_NA(0.00)[];
	SUBJECT_HAS_QUESTION(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 5FA093EF1D
X-MailFrom: 3i14rZQkbACYUabMCNNGTCRRKF.IQQINGWUGTEQPVGPV.EQO@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 7C46ADP6LNY4HNX54CHSCY5NKR23EOLY
X-Message-ID-Hash: 7C46ADP6LNY4HNX54CHSCY5NKR23EOLY
X-Mailman-Approved-At: Thu, 19 Oct 2023 11:51:53 +0000
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [syzbot] [dri?] WARNING in drm_prime_fd_to_handle_ioctl
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7C46ADP6LNY4HNX54CHSCY5NKR23EOLY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8sDQoNCnN5emJvdCBmb3VuZCB0aGUgZm9sbG93aW5nIGlzc3VlIG9uOg0KDQpIRUFEIGNv
bW1pdDogICAgMWM4Yjg2YTM3OTlmIE1lcmdlIHRhZyAneHNhNDQxLTYuNi10YWcnIG9mIGdpdDov
L2dpdC5rZXJuZS4uDQpnaXQgdHJlZTogICAgICAgdXBzdHJlYW0NCmNvbnNvbGUrc3RyYWNlOiBo
dHRwczovL3N5emthbGxlci5hcHBzcG90LmNvbS94L2xvZy50eHQ/eD0xMzAwNWUzMTY4MDAwMA0K
a2VybmVsIGNvbmZpZzogIGh0dHBzOi8vc3l6a2FsbGVyLmFwcHNwb3QuY29tL3gvLmNvbmZpZz94
PTMyZDBiOWI0MmNlYjhiMTANCmRhc2hib2FyZCBsaW5rOiBodHRwczovL3N5emthbGxlci5hcHBz
cG90LmNvbS9idWc/ZXh0aWQ9MGRhODFjY2JhMjM0NWVlYjdmNDgNCmNvbXBpbGVyOiAgICAgICBn
Y2MgKERlYmlhbiAxMi4yLjAtMTQpIDEyLjIuMCwgR05VIGxkIChHTlUgQmludXRpbHMgZm9yIERl
YmlhbikgMi40MA0Kc3l6IHJlcHJvOiAgICAgIGh0dHBzOi8vc3l6a2FsbGVyLmFwcHNwb3QuY29t
L3gvcmVwcm8uc3l6P3g9MTNjNDgzNDU2ODAwMDANCkMgcmVwcm9kdWNlcjogICBodHRwczovL3N5
emthbGxlci5hcHBzcG90LmNvbS94L3JlcHJvLmM/eD0xMDFiMzY3OTY4MDAwMA0KDQpEb3dubG9h
ZGFibGUgYXNzZXRzOg0KZGlzayBpbWFnZTogaHR0cHM6Ly9zdG9yYWdlLmdvb2dsZWFwaXMuY29t
L3N5emJvdC1hc3NldHMvNDVlOTM3Nzg4NmU5L2Rpc2stMWM4Yjg2YTMucmF3Lnh6DQp2bWxpbnV4
OiBodHRwczovL3N0b3JhZ2UuZ29vZ2xlYXBpcy5jb20vc3l6Ym90LWFzc2V0cy85NTExYTQxYTZk
MWUvdm1saW51eC0xYzhiODZhMy54eg0Ka2VybmVsIGltYWdlOiBodHRwczovL3N0b3JhZ2UuZ29v
Z2xlYXBpcy5jb20vc3l6Ym90LWFzc2V0cy9mYWMwN2UxYzNjMWEvYnpJbWFnZS0xYzhiODZhMy54
eg0KDQpUaGUgaXNzdWUgd2FzIGJpc2VjdGVkIHRvOg0KDQpjb21taXQgODVlMjZkZDUxMDBhMTgy
YmY4NDQ4MDUwNDI3NTM5YzBhNjZhYjc5Mw0KQXV0aG9yOiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJp
c3RpYW4ua29lbmlnQGFtZC5jb20+DQpEYXRlOiAgIFRodSBKYW4gMjYgMDk6MjQ6MjYgMjAyMyAr
MDAwMA0KDQogICAgZHJtL2NsaWVudDogZml4IGNpcmN1bGFyIHJlZmVyZW5jZSBjb3VudGluZyBp
c3N1ZQ0KDQpiaXNlY3Rpb24gbG9nOiAgaHR0cHM6Ly9zeXprYWxsZXIuYXBwc3BvdC5jb20veC9i
aXNlY3QudHh0P3g9MTRjZjE3ZjE2ODAwMDANCmZpbmFsIG9vcHM6ICAgICBodHRwczovL3N5emth
bGxlci5hcHBzcG90LmNvbS94L3JlcG9ydC50eHQ/eD0xNmNmMTdmMTY4MDAwMA0KY29uc29sZSBv
dXRwdXQ6IGh0dHBzOi8vc3l6a2FsbGVyLmFwcHNwb3QuY29tL3gvbG9nLnR4dD94PTEyY2YxN2Yx
NjgwMDAwDQoNCklNUE9SVEFOVDogaWYgeW91IGZpeCB0aGUgaXNzdWUsIHBsZWFzZSBhZGQgdGhl
IGZvbGxvd2luZyB0YWcgdG8gdGhlIGNvbW1pdDoNClJlcG9ydGVkLWJ5OiBzeXpib3QrMGRhODFj
Y2JhMjM0NWVlYjdmNDhAc3l6a2FsbGVyLmFwcHNwb3RtYWlsLmNvbQ0KRml4ZXM6IDg1ZTI2ZGQ1
MTAwYSAoImRybS9jbGllbnQ6IGZpeCBjaXJjdWxhciByZWZlcmVuY2UgY291bnRpbmcgaXNzdWUi
KQ0KDQotLS0tLS0tLS0tLS1bIGN1dCBoZXJlIF0tLS0tLS0tLS0tLS0NCldBUk5JTkc6IENQVTog
MCBQSUQ6IDUwNDAgYXQgZHJpdmVycy9ncHUvZHJtL2RybV9wcmltZS5jOjMyNiBkcm1fZ2VtX3By
aW1lX2ZkX3RvX2hhbmRsZSBkcml2ZXJzL2dwdS9kcm0vZHJtX3ByaW1lLmM6MzI2IFtpbmxpbmVd
DQpXQVJOSU5HOiBDUFU6IDAgUElEOiA1MDQwIGF0IGRyaXZlcnMvZ3B1L2RybS9kcm1fcHJpbWUu
YzozMjYgZHJtX3ByaW1lX2ZkX3RvX2hhbmRsZV9pb2N0bCsweDU1NS8weDYwMCBkcml2ZXJzL2dw
dS9kcm0vZHJtX3ByaW1lLmM6Mzc0DQpNb2R1bGVzIGxpbmtlZCBpbjoNCkNQVTogMCBQSUQ6IDUw
NDAgQ29tbTogc3l6LWV4ZWN1dG9yNDA1IE5vdCB0YWludGVkIDYuNi4wLXJjNS1zeXprYWxsZXIt
MDAwNTUtZzFjOGI4NmEzNzk5ZiAjMA0KSGFyZHdhcmUgbmFtZTogR29vZ2xlIEdvb2dsZSBDb21w
dXRlIEVuZ2luZS9Hb29nbGUgQ29tcHV0ZSBFbmdpbmUsIEJJT1MgR29vZ2xlIDA5LzA2LzIwMjMN
ClJJUDogMDAxMDpkcm1fZ2VtX3ByaW1lX2ZkX3RvX2hhbmRsZSBkcml2ZXJzL2dwdS9kcm0vZHJt
X3ByaW1lLmM6MzI2IFtpbmxpbmVdDQpSSVA6IDAwMTA6ZHJtX3ByaW1lX2ZkX3RvX2hhbmRsZV9p
b2N0bCsweDU1NS8weDYwMCBkcml2ZXJzL2dwdS9kcm0vZHJtX3ByaW1lLmM6Mzc0DQpDb2RlOiA4
OSBkZiBlOCAwZSA5YiAyNiBmZCBmMCA0OCBmZiAwMyBlOSA3ZSBmZCBmZiBmZiBlOCBiMCBkYyBk
MCBmYyA0YyA4OSBmNyA0NCA4OSBlYiBlOCA3NSA3MyA4YiAwNSBlOSBkYSBmZSBmZiBmZiBlOCA5
YiBkYyBkMCBmYyA8MGY+IDBiIGU5IDVkIGZkIGZmIGZmIGU4IDNmIDk0IDI2IGZkIGU5IDNhIGZj
IGZmIGZmIDQ4IDhiIDdjIDI0IDA4DQpSU1A6IDAwMTg6ZmZmZmM5MDAwM2E1ZmM3MCBFRkxBR1M6
IDAwMDEwMjkzDQpSQVg6IDAwMDAwMDAwMDAwMDAwMDAgUkJYOiBmZmZmODg4MDE4ZjE0YzAwIFJD
WDogMDAwMDAwMDAwMDAwMDAwMA0KUkRYOiBmZmZmODg4MDFkNjkxZGMwIFJTSTogZmZmZmZmZmY4
NGI2ZWExNSBSREk6IGZmZmY4ODgxNDc2ZjM5MjgNClJCUDogZmZmZjg4ODAxZmFjNTQwMCBSMDg6
IDAwMDAwMDAwMDAwMDAwMDcgUjA5OiBmZmZmZmZmZmZmZmZmMDAwDQpSMTA6IGZmZmY4ODgxNDc2
ZjM4MDAgUjExOiAwMDAwMDAwMDAwMDAwMDAwIFIxMjogZmZmZmM5MDAwM2E1ZmUxMA0KUjEzOiBm
ZmZmODg4MTQ3NmYzODAwIFIxNDogZmZmZjg4ODAxYzU5MGMxMCBSMTU6IDAwMDAwMDAwMDAwMDAw
MDANCkZTOiAgMDAwMDU1NTU1NTVkNjM4MCgwMDAwKSBHUzpmZmZmODg4MGI5ODAwMDAwKDAwMDAp
IGtubEdTOjAwMDAwMDAwMDAwMDAwMDANCkNTOiAgMDAxMCBEUzogMDAwMCBFUzogMDAwMCBDUjA6
IDAwMDAwMDAwODAwNTAwMzMNCkNSMjogMDAwMDU1NWRiNzVmNDA1OCBDUjM6IDAwMDAwMDAwNzIy
MDkwMDAgQ1I0OiAwMDAwMDAwMDAwMzUwZWYwDQpDYWxsIFRyYWNlOg0KIDxUQVNLPg0KIGRybV9p
b2N0bF9rZXJuZWwrMHgyODAvMHg0YzAgZHJpdmVycy9ncHUvZHJtL2RybV9pb2N0bC5jOjc4OQ0K
IGRybV9pb2N0bCsweDVjYi8weGJmMCBkcml2ZXJzL2dwdS9kcm0vZHJtX2lvY3RsLmM6ODkyDQog
dmZzX2lvY3RsIGZzL2lvY3RsLmM6NTEgW2lubGluZV0NCiBfX2RvX3N5c19pb2N0bCBmcy9pb2N0
bC5jOjg3MSBbaW5saW5lXQ0KIF9fc2Vfc3lzX2lvY3RsIGZzL2lvY3RsLmM6ODU3IFtpbmxpbmVd
DQogX194NjRfc3lzX2lvY3RsKzB4MThmLzB4MjEwIGZzL2lvY3RsLmM6ODU3DQogZG9fc3lzY2Fs
bF94NjQgYXJjaC94ODYvZW50cnkvY29tbW9uLmM6NTAgW2lubGluZV0NCiBkb19zeXNjYWxsXzY0
KzB4MzgvMHhiMCBhcmNoL3g4Ni9lbnRyeS9jb21tb24uYzo4MA0KIGVudHJ5X1NZU0NBTExfNjRf
YWZ0ZXJfaHdmcmFtZSsweDYzLzB4Y2QNClJJUDogMDAzMzoweDdmMGM4MjE0YmU2OQ0KQ29kZTog
MjggMDAgMDAgMDAgNzUgMDUgNDggODMgYzQgMjggYzMgZTggYzEgMTcgMDAgMDAgOTAgNDggODkg
ZjggNDggODkgZjcgNDggODkgZDYgNDggODkgY2EgNGQgODkgYzIgNGQgODkgYzggNGMgOGIgNGMg
MjQgMDggMGYgMDUgPDQ4PiAzZCAwMSBmMCBmZiBmZiA3MyAwMSBjMyA0OCBjNyBjMSBiOCBmZiBm
ZiBmZiBmNyBkOCA2NCA4OSAwMSA0OA0KUlNQOiAwMDJiOjAwMDA3ZmZmNmY0MTU2ZjggRUZMQUdT
OiAwMDAwMDI0NiBPUklHX1JBWDogMDAwMDAwMDAwMDAwMDAxMA0KUkFYOiBmZmZmZmZmZmZmZmZm
ZmRhIFJCWDogMDAwMDAwMDAwMDAwMDAwMCBSQ1g6IDAwMDA3ZjBjODIxNGJlNjkNClJEWDogMDAw
MDAwMDAyMDAwMDAwMCBSU0k6IDAwMDAwMDAwYzAwYzY0MmUgUkRJOiAwMDAwMDAwMDAwMDAwMDAz
DQpSQlA6IDAwMDAwMDAwMDAwMDAwMDAgUjA4OiAwMDAwMDAwMDAwMDAwMGEwIFIwOTogMDAwMDAw
MDAwMDAwMDBhMA0KUjEwOiAwMDAwMDAwMDAwMDAwMGEwIFIxMTogMDAwMDAwMDAwMDAwMDI0NiBS
MTI6IDAwMDAwMDAwMDAwMDAwMDANClIxMzogMDAwMDdmMGM4MjFjMzgyMCBSMTQ6IDAwMDA3ZmZm
NmY0MTU3MjAgUjE1OiAwMDAwN2ZmZjZmNDE1NzEwDQogPC9UQVNLPg0KDQoNCi0tLQ0KVGhpcyBy
ZXBvcnQgaXMgZ2VuZXJhdGVkIGJ5IGEgYm90LiBJdCBtYXkgY29udGFpbiBlcnJvcnMuDQpTZWUg
aHR0cHM6Ly9nb28uZ2wvdHBzbUVKIGZvciBtb3JlIGluZm9ybWF0aW9uIGFib3V0IHN5emJvdC4N
CnN5emJvdCBlbmdpbmVlcnMgY2FuIGJlIHJlYWNoZWQgYXQgc3l6a2FsbGVyQGdvb2dsZWdyb3Vw
cy5jb20uDQoNCnN5emJvdCB3aWxsIGtlZXAgdHJhY2sgb2YgdGhpcyBpc3N1ZS4gU2VlOg0KaHR0
cHM6Ly9nb28uZ2wvdHBzbUVKI3N0YXR1cyBmb3IgaG93IHRvIGNvbW11bmljYXRlIHdpdGggc3l6
Ym90Lg0KRm9yIGluZm9ybWF0aW9uIGFib3V0IGJpc2VjdGlvbiBwcm9jZXNzIHNlZTogaHR0cHM6
Ly9nb28uZ2wvdHBzbUVKI2Jpc2VjdGlvbg0KDQpJZiB0aGUgYnVnIGlzIGFscmVhZHkgZml4ZWQs
IGxldCBzeXpib3Qga25vdyBieSByZXBseWluZyB3aXRoOg0KI3N5eiBmaXg6IGV4YWN0LWNvbW1p
dC10aXRsZQ0KDQpJZiB5b3Ugd2FudCBzeXpib3QgdG8gcnVuIHRoZSByZXByb2R1Y2VyLCByZXBs
eSB3aXRoOg0KI3N5eiB0ZXN0OiBnaXQ6Ly9yZXBvL2FkZHJlc3MuZ2l0IGJyYW5jaC1vci1jb21t
aXQtaGFzaA0KSWYgeW91IGF0dGFjaCBvciBwYXN0ZSBhIGdpdCBwYXRjaCwgc3l6Ym90IHdpbGwg
YXBwbHkgaXQgYmVmb3JlIHRlc3RpbmcuDQoNCklmIHlvdSB3YW50IHRvIG92ZXJ3cml0ZSBidWcn
cyBzdWJzeXN0ZW1zLCByZXBseSB3aXRoOg0KI3N5eiBzZXQgc3Vic3lzdGVtczogbmV3LXN1YnN5
c3RlbQ0KKFNlZSB0aGUgbGlzdCBvZiBzdWJzeXN0ZW0gbmFtZXMgb24gdGhlIHdlYiBkYXNoYm9h
cmQpDQoNCklmIHRoZSBidWcgaXMgYSBkdXBsaWNhdGUgb2YgYW5vdGhlciBidWcsIHJlcGx5IHdp
dGg6DQojc3l6IGR1cDogZXhhY3Qtc3ViamVjdC1vZi1hbm90aGVyLXJlcG9ydA0KDQpJZiB5b3Ug
d2FudCB0byB1bmRvIGRlZHVwbGljYXRpb24sIHJlcGx5IHdpdGg6DQojc3l6IHVuZHVwDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2ln
IG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJz
Y3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5v
cmcK
