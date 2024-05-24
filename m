Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 319038CE62D
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 May 2024 15:27:00 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DB27C440EC
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 May 2024 13:26:58 +0000 (UTC)
Received: from www262.sakura.ne.jp (www262.sakura.ne.jp [202.181.97.72])
	by lists.linaro.org (Postfix) with ESMTPS id CD4B340099
	for <linaro-mm-sig@lists.linaro.org>; Fri, 24 May 2024 13:26:47 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of penguin-kernel@I-love.SAKURA.ne.jp designates 202.181.97.72 as permitted sender) smtp.mailfrom=penguin-kernel@I-love.SAKURA.ne.jp;
	dmarc=none
Received: from fsav313.sakura.ne.jp (fsav313.sakura.ne.jp [153.120.85.144])
	by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id 44ODQKlS037943;
	Fri, 24 May 2024 22:26:20 +0900 (JST)
	(envelope-from penguin-kernel@I-love.SAKURA.ne.jp)
Received: from www262.sakura.ne.jp (202.181.97.72)
 by fsav313.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav313.sakura.ne.jp);
 Fri, 24 May 2024 22:26:20 +0900 (JST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/fsav313.sakura.ne.jp)
Received: from [192.168.1.6] (M106072142033.v4.enabler.ne.jp [106.72.142.33])
	(authenticated bits=0)
	by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTPSA id 44ODQJtV037935
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NO);
	Fri, 24 May 2024 22:26:19 +0900 (JST)
	(envelope-from penguin-kernel@I-love.SAKURA.ne.jp)
Message-ID: <0204a827-ca88-4cb6-839b-f4a637bcbf71@I-love.SAKURA.ne.jp>
Date: Fri, 24 May 2024 22:26:20 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
        syzbot <syzbot+a225ee3df7e7f9372dbe@syzkaller.appspotmail.com>,
        syzkaller-bugs@googlegroups.com,
        Sumit Semwal <sumit.semwal@linaro.org>,
        Gustavo Padovan <gustavo@padovan.org>,
        Christian Konig <christian.koenig@amd.com>,
        Sean Paul
 <seanpaul@chromium.org>,
        Chris Wilson <chris@chris-wilson.co.uk>
References: <0000000000000946190610bf7bd5@google.com>
 <c2e46020-aaa6-4e06-bf73-f05823f913f0@I-love.SAKURA.ne.jp>
 <8980975d-87db-4d57-9e23-4fb7fbb62e7d@gmail.com>
Content-Language: en-US
From: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
In-Reply-To: <8980975d-87db-4d57-9e23-4fb7fbb62e7d@gmail.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: CD4B340099
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.79 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+a:www262.sakura.ne.jp];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	TAGGED_RCPT(0.00)[a225ee3df7e7f9372dbe];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:9370, ipnet:202.181.96.0/20, country:JP];
	FREEMAIL_TO(0.00)[gmail.com,syzkaller.appspotmail.com,googlegroups.com,linaro.org,padovan.org,amd.com,chromium.org,chris-wilson.co.uk];
	R_DKIM_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[sakura.ne.jp];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[]
Message-ID-Hash: YAE2W53QAVAICIH4UOEF4ICSBOCOQJCR
X-Message-ID-Hash: YAE2W53QAVAICIH4UOEF4ICSBOCOQJCR
X-MailFrom: penguin-kernel@I-love.SAKURA.ne.jp
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf/sw-sync: don't enable IRQ from sync_print_obj()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YAE2W53QAVAICIH4UOEF4ICSBOCOQJCR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMjAyNC8wNS8wNyAyMjowOSwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4gQW0gMDUuMDUu
MjQgdW0gMTY6MDggc2NocmllYiBUZXRzdW8gSGFuZGE6DQo+PiBTaW5jZSBjb21taXQgYTZhYThm
Y2E0ZDc5ICgiZG1hLWJ1Zi9zdy1zeW5jOiBSZWR1Y2UgaXJxc2F2ZS9pcnFyZXN0b3JlIGZyb20N
Cj4+IGtub3duIGNvbnRleHQiKSBieSBlcnJvciByZXBsYWNlZCBzcGluX3VubG9ja19pcnFyZXN0
b3JlKCkgd2l0aA0KPj4gc3Bpbl91bmxvY2tfaXJxKCkgZm9yIGJvdGggc3luY19kZWJ1Z2ZzX3No
b3coKSBhbmQgc3luY19wcmludF9vYmooKSBkZXNwaXRlDQo+PiBzeW5jX3ByaW50X29iaigpIGlz
IGNhbGxlZCBmcm9tIHN5bmNfZGVidWdmc19zaG93KCksIGxvY2tkZXAgY29tcGxhaW5zDQo+PiBp
bmNvbnNpc3RlbnQgbG9jayBzdGF0ZSB3YXJuaW5nLg0KPj4NCj4+IFVzZSBwbGFpbiBzcGluX3ts
b2NrLHVubG9ja30oKSBmb3Igc3luY19wcmludF9vYmooKSwgZm9yDQo+PiBzeW5jX2RlYnVnZnNf
c2hvdygpIGlzIGFscmVhZHkgdXNpbmcgc3Bpbl97bG9jayx1bmxvY2t9X2lycSgpLg0KPj4NCj4+
IFJlcG9ydGVkLWJ5OiBzeXpib3QgPHN5emJvdCthMjI1ZWUzZGY3ZTdmOTM3MmRiZUBzeXprYWxs
ZXIuYXBwc3BvdG1haWwuY29tPg0KPj4gQ2xvc2VzOiBodHRwczovL3N5emthbGxlci5hcHBzcG90
LmNvbS9idWc/ZXh0aWQ9YTIyNWVlM2RmN2U3ZjkzNzJkYmUNCj4+IEZpeGVzOiBhNmFhOGZjYTRk
NzkgKCJkbWEtYnVmL3N3LXN5bmM6IFJlZHVjZSBpcnFzYXZlL2lycXJlc3RvcmUgZnJvbSBrbm93
biBjb250ZXh0IikNCj4+IFNpZ25lZC1vZmYtYnk6IFRldHN1byBIYW5kYSA8cGVuZ3Vpbi1rZXJu
ZWxASS1sb3ZlLlNBS1VSQS5uZS5qcD4NCj4gDQo+IFJldmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2
bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQoNClRoYW5rIHlvdS4gV2hvIGNhbiB0YWtl
IHRoaXMgcGF0Y2g/DQoNCj4gDQo+PiAtLS0NCj4+IMKgIGRyaXZlcnMvZG1hLWJ1Zi9zeW5jX2Rl
YnVnLmMgfCA0ICsrLS0NCj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIg
ZGVsZXRpb25zKC0pDQo+Pg0KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9zeW5jX2Rl
YnVnLmMgYi9kcml2ZXJzL2RtYS1idWYvc3luY19kZWJ1Zy5jDQo+PiBpbmRleCAxMDEzOTRmMTY5
MzAuLjIzN2JjZTIxZDFlNyAxMDA2NDQNCj4+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9zeW5jX2Rl
YnVnLmMNCj4+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9zeW5jX2RlYnVnLmMNCj4+IEBAIC0xMTAs
MTIgKzExMCwxMiBAQCBzdGF0aWMgdm9pZCBzeW5jX3ByaW50X29iaihzdHJ1Y3Qgc2VxX2ZpbGUg
KnMsIHN0cnVjdCBzeW5jX3RpbWVsaW5lICpvYmopDQo+PiDCoCDCoMKgwqDCoMKgIHNlcV9wcmlu
dGYocywgIiVzOiAlZFxuIiwgb2JqLT5uYW1lLCBvYmotPnZhbHVlKTsNCj4+IMKgIC3CoMKgwqAg
c3Bpbl9sb2NrX2lycSgmb2JqLT5sb2NrKTsNCj4+ICvCoMKgwqAgc3Bpbl9sb2NrKCZvYmotPmxv
Y2spOyAvKiBDYWxsZXIgYWxyZWFkeSBkaXNhYmxlZCBJUlEuICovDQo+PiDCoMKgwqDCoMKgIGxp
c3RfZm9yX2VhY2gocG9zLCAmb2JqLT5wdF9saXN0KSB7DQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAg
c3RydWN0IHN5bmNfcHQgKnB0ID0gY29udGFpbmVyX29mKHBvcywgc3RydWN0IHN5bmNfcHQsIGxp
bmspOw0KPj4gwqDCoMKgwqDCoMKgwqDCoMKgIHN5bmNfcHJpbnRfZmVuY2UocywgJnB0LT5iYXNl
LCBmYWxzZSk7DQo+PiDCoMKgwqDCoMKgIH0NCj4+IC3CoMKgwqAgc3Bpbl91bmxvY2tfaXJxKCZv
YmotPmxvY2spOw0KPj4gK8KgwqDCoCBzcGluX3VubG9jaygmb2JqLT5sb2NrKTsNCj4+IMKgIH0N
Cj4+IMKgIMKgIHN0YXRpYyB2b2lkIHN5bmNfcHJpbnRfc3luY19maWxlKHN0cnVjdCBzZXFfZmls
ZSAqcywNCj4gDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVh
dmVAbGlzdHMubGluYXJvLm9yZwo=
