Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0NDfMxqcpmlqRwAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 03 Mar 2026 09:30:18 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 41D3D1EACC7
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 03 Mar 2026 09:30:18 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0D7693F727
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  3 Mar 2026 08:30:17 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id 1D95B3F727
	for <linaro-mm-sig@lists.linaro.org>; Tue,  3 Mar 2026 08:30:15 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=JW8JpHeF;
	dmarc=pass (policy=quarantine) header.from=redhat.com;
	spf=pass (lists.linaro.org: domain of aesteve@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=aesteve@redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1772526614;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=viUy7hzMU4+O4xdoDCnRaeiIoPG6PXt0vSgDJ4O3NVU=;
	b=JW8JpHeFJN1ImXt4APtdRJNU19DGK2bLkcsh2wCroz3ig0WDPAO5HLnKWOx/qlpwQxlpKF
	egm/JytVMdYWQ0znez7PE8anIe8zLgPssJipQam6B0jvk9S0q+J736CL+PIVGeJckiYVvN
	9TQPg+yI9Ss2X/jsCveuCXWK5/ZKiE0=
Received: from mail-yx1-f70.google.com (mail-yx1-f70.google.com
 [74.125.224.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-127-eldNflyoOJqcKhJPfrxnuQ-1; Tue, 03 Mar 2026 03:30:13 -0500
X-MC-Unique: eldNflyoOJqcKhJPfrxnuQ-1
X-Mimecast-MFC-AGG-ID: eldNflyoOJqcKhJPfrxnuQ_1772526613
Received: by mail-yx1-f70.google.com with SMTP id 956f58d0204a3-644548b1dcfso7250613d50.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 03 Mar 2026 00:30:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772526613; x=1773131413;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=viUy7hzMU4+O4xdoDCnRaeiIoPG6PXt0vSgDJ4O3NVU=;
        b=Eb+MkCHABlXqdO/Z2cVbZR+xLBZTTME2jqb8/6PPtUQcwnO3tIiIy8Owrm6BtpghMc
         q0eufGMS9/Gbly8RuCgRPadHS6Lt8YfAieMFxpzGI6/g7U2qUHfhxA+ipY/PkNaB/RcL
         qswt5nLH5qqSvZ67md0FfDpqHWb6WneVzQFK3CThE1rQEFUgKAi31yI1Jw8M3kxx7Xzm
         sqCBvsZrwTRj+gSzY0KXJqGSXwXw+iIrKNygwMt7xq3gqoN76l4KyCzewyYe1hrbyj6x
         7uV1UXZNmwPcpIpp8/6WW9orboT2N+DCwX09J1UnQ/P/xT9cCy5JlwKOFVqtM0c92NTw
         qYFw==
X-Forwarded-Encrypted: i=1; AJvYcCWnDub17mpXJ1Xe5FMiwkF4ZsCNTjBm5UnYGv/QJbEYjhqGmZhKP1fQp0r6sRG6rwTDafDyZAZWBtjYRqXE@lists.linaro.org
X-Gm-Message-State: AOJu0Yxd96bfpXUBsRaeMmtpP8yX4UJignyHE+HFOgf4zhgSOE07Q/dj
	bG0bkl/s1FG+mPfnTHgZ9SlrxpjHLKMxZYhNOItpdKCs3Ix1Fuyz0Erx6rAv23TD1r9nalGYuCh
	QlvR25bZljZctPG0baYJQX1RCn7nxko6ikHtCp1BoT3W2YGS6dxG3AUhKejisRv8fq87tuxisTo
	nKYVAMht/UTrofCOBoOecY02FJojRUc3F8i/q/XJogBz8=
X-Gm-Gg: ATEYQzx33j+KgoP/t6jn5VR4slViXmdIKmaVPrlYfZTxCKXqd86ANNq921O6BTbfu/5
	JQ0T6g0rf46nhXvGnzzqfLIusf/TT20lG3fwS33/0IkYD3NMVxgzAzfxVi9mA0B1CZAhfWK8xRi
	x4hjcs9DCDTa6NF4OjQwqszXszt9L4qpBgdIasgPVPFRLGe8RQaM/GSYIFPud/JV9tAmhHLlq6b
	w==
X-Received: by 2002:a05:690e:2026:b0:64c:e819:1b63 with SMTP id 956f58d0204a3-64ce8191c0fmr2299001d50.23.1772526612902;
        Tue, 03 Mar 2026 00:30:12 -0800 (PST)
X-Received: by 2002:a05:690e:2026:b0:64c:e819:1b63 with SMTP id
 956f58d0204a3-64ce8191c0fmr2298965d50.23.1772526612385; Tue, 03 Mar 2026
 00:30:12 -0800 (PST)
MIME-Version: 1.0
References: <20260227-dma-buf-heaps-as-modules-v2-0-454aee7e06cc@kernel.org> <20260227-dma-buf-heaps-as-modules-v2-1-454aee7e06cc@kernel.org>
In-Reply-To: <20260227-dma-buf-heaps-as-modules-v2-1-454aee7e06cc@kernel.org>
From: Albert Esteve <aesteve@redhat.com>
Date: Tue, 3 Mar 2026 09:30:01 +0100
X-Gm-Features: AaiRm51O-7HLXl5WqAQFt8ndmggiU93wYFS2Jxqx5wmhO0yrhCBFx8LCXAa_vkY
Message-ID: <CADSE00KTKhzuB1vDj=hkBVE+5dq+=q3xRsj6dK_96Jhqi49OwQ@mail.gmail.com>
To: Maxime Ripard <mripard@kernel.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: NCDBqXbWuW0AQEpi_6MDXN-ZoSsQzbAmOS0YOE44dCg_1772526613
X-Mimecast-Originator: redhat.com
X-Spamd-Bar: ------
Message-ID-Hash: RVSI2RBO5CCC6VKLKHG5GCPUIQG3GJLV
X-Message-ID-Hash: RVSI2RBO5CCC6VKLKHG5GCPUIQG3GJLV
X-MailFrom: aesteve@redhat.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Robin Murphy <robin.murphy@arm.com>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@kernel.org>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, "Liam R. Howlett" <Liam.Howlett@oracle.com>, Vlastimil Babka <vbabka@suse.cz>, Mike Rapoport <rppt@kernel.org>, Suren Baghdasaryan <surenb@google.com>, Michal Hocko <mhocko@suse.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 1/9] dma: contiguous: Turn heap registration logic around
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RVSI2RBO5CCC6VKLKHG5GCPUIQG3GJLV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: 41D3D1EACC7
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.09 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[redhat.com:s=mimecast20190719];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.940];
	FROM_NEQ_ENVFROM(0.00)[aesteve@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[redhat.com:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,linaro.org:email]
X-Rspamd-Action: no action

T24gRnJpLCBGZWIgMjcsIDIwMjYgYXQgMjoyM+KAr1BNIE1heGltZSBSaXBhcmQgPG1yaXBhcmRA
a2VybmVsLm9yZz4gd3JvdGU6DQo+DQo+IFRoZSBDTUEgaGVhcCBpbnN0YW50aWF0aW9uIHdhcyBp
bml0aWFsbHkgZGV2ZWxvcGVkIGJ5IGhhdmluZyB0aGUNCj4gY29udGlndW91cyBETUEgY29kZSBj
YWxsIGludG8gdGhlIENNQSBoZWFwIHRvIGNyZWF0ZSBhIG5ldyBpbnN0YW5jZQ0KPiBldmVyeSB0
aW1lIGEgcmVzZXJ2ZWQgbWVtb3J5IGFyZWEgaXMgcHJvYmVkLg0KPg0KPiBUdXJuaW5nIHRoZSBD
TUEgaGVhcCBpbnRvIGEgbW9kdWxlIHdvdWxkIGNyZWF0ZSBhIGRlcGVuZGVuY3kgb2YgdGhlDQo+
IGtlcm5lbCBvbiBhIG1vZHVsZSwgd2hpY2ggZG9lc24ndCB3b3JrLg0KPg0KPiBMZXQncyB0dXJu
IHRoZSBsb2dpYyBhcm91bmQgYW5kIGRvIHRoZSBvcHBvc2l0ZTogc3RvcmUgYWxsIHRoZSByZXNl
cnZlZA0KPiBtZW1vcnkgQ01BIHJlZ2lvbnMgaW50byB0aGUgY29udGlndW91cyBETUEgY29kZSwg
YW5kIHByb3ZpZGUgYW4gaXRlcmF0b3INCj4gZm9yIHRoZSBoZWFwIHRvIHVzZSB3aGVuIGl0IHBy
b2Jlcy4NCj4NCj4gUmV2aWV3ZWQtYnk6IFQuSi4gTWVyY2llciA8dGptZXJjaWVyQGdvb2dsZS5j
b20+DQo+IFNpZ25lZC1vZmYtYnk6IE1heGltZSBSaXBhcmQgPG1yaXBhcmRAa2VybmVsLm9yZz4N
Cg0KUmV2aWV3ZWQtYnk6IEFsYmVydCBFc3RldmUgPGFlc3RldmVAcmVkaGF0LmNvbT4NCg0KPiAt
LS0NCj4gIGRyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9jbWFfaGVhcC5jIHwgMTggKystLS0tLS0tLS0t
LS0tLS0tDQo+ICBpbmNsdWRlL2xpbnV4L2RtYS1tYXAtb3BzLmggICAgICB8ICA1ICsrKysrDQo+
ICBrZXJuZWwvZG1hL2NvbnRpZ3VvdXMuYyAgICAgICAgICB8IDI2ICsrKysrKysrKysrKysrKysr
KysrKysrKy0tDQo+ICAzIGZpbGVzIGNoYW5nZWQsIDMxIGluc2VydGlvbnMoKyksIDE4IGRlbGV0
aW9ucygtKQ0KPg0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2hlYXBzL2NtYV9oZWFw
LmMgYi9kcml2ZXJzL2RtYS1idWYvaGVhcHMvY21hX2hlYXAuYw0KPiBpbmRleCBiZDMzNzBiOWEz
ZjZkNGUxODg4NWExZDBlOGJhM2Y2NTliODVlZjQ3Li5mOGEzZDg3ZjNjY2VlOTYzMDM4M2JhMjg1
MDJlYjQwYjEwNjcxY2MyIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvaGVhcHMvY21h
X2hlYXAuYw0KPiArKysgYi9kcml2ZXJzL2RtYS1idWYvaGVhcHMvY21hX2hlYXAuYw0KPiBAQCAt
MjgsMjMgKzI4LDEwIEBADQo+ICAjaW5jbHVkZSA8bGludXgvc2xhYi5oPg0KPiAgI2luY2x1ZGUg
PGxpbnV4L3ZtYWxsb2MuaD4NCj4NCj4gICNkZWZpbmUgREVGQVVMVF9DTUFfTkFNRSAiZGVmYXVs
dF9jbWFfcmVnaW9uIg0KPg0KPiAtc3RhdGljIHN0cnVjdCBjbWEgKmRtYV9hcmVhc1tNQVhfQ01B
X0FSRUFTXSBfX2luaXRkYXRhOw0KPiAtc3RhdGljIHVuc2lnbmVkIGludCBkbWFfYXJlYXNfbnVt
IF9faW5pdGRhdGE7DQo+IC0NCj4gLWludCBfX2luaXQgZG1hX2hlYXBfY21hX3JlZ2lzdGVyX2hl
YXAoc3RydWN0IGNtYSAqY21hKQ0KPiAtew0KPiAtICAgICAgIGlmIChkbWFfYXJlYXNfbnVtID49
IEFSUkFZX1NJWkUoZG1hX2FyZWFzKSkNCj4gLSAgICAgICAgICAgICAgIHJldHVybiAtRUlOVkFM
Ow0KPiAtDQo+IC0gICAgICAgZG1hX2FyZWFzW2RtYV9hcmVhc19udW0rK10gPSBjbWE7DQo+IC0N
Cj4gLSAgICAgICByZXR1cm4gMDsNCj4gLX0NCj4gLQ0KPiAgc3RydWN0IGNtYV9oZWFwIHsNCj4g
ICAgICAgICBzdHJ1Y3QgZG1hX2hlYXAgKmhlYXA7DQo+ICAgICAgICAgc3RydWN0IGNtYSAqY21h
Ow0KPiAgfTsNCj4NCj4gQEAgLTQxMiwyMiArMzk5LDIxIEBAIHN0YXRpYyBpbnQgX19pbml0IF9f
YWRkX2NtYV9oZWFwKHN0cnVjdCBjbWEgKmNtYSwgY29uc3QgY2hhciAqbmFtZSkNCj4gIH0NCj4N
Cj4gIHN0YXRpYyBpbnQgX19pbml0IGFkZF9jbWFfaGVhcHModm9pZCkNCj4gIHsNCj4gICAgICAg
ICBzdHJ1Y3QgY21hICpkZWZhdWx0X2NtYSA9IGRldl9nZXRfY21hX2FyZWEoTlVMTCk7DQo+ICsg
ICAgICAgc3RydWN0IGNtYSAqY21hOw0KPiAgICAgICAgIHVuc2lnbmVkIGludCBpOw0KPiAgICAg
ICAgIGludCByZXQ7DQo+DQo+ICAgICAgICAgaWYgKGRlZmF1bHRfY21hKSB7DQo+ICAgICAgICAg
ICAgICAgICByZXQgPSBfX2FkZF9jbWFfaGVhcChkZWZhdWx0X2NtYSwgREVGQVVMVF9DTUFfTkFN
RSk7DQo+ICAgICAgICAgICAgICAgICBpZiAocmV0KQ0KPiAgICAgICAgICAgICAgICAgICAgICAg
ICByZXR1cm4gcmV0Ow0KPiAgICAgICAgIH0NCj4NCj4gLSAgICAgICBmb3IgKGkgPSAwOyBpIDwg
ZG1hX2FyZWFzX251bTsgaSsrKSB7DQo+IC0gICAgICAgICAgICAgICBzdHJ1Y3QgY21hICpjbWEg
PSBkbWFfYXJlYXNbaV07DQo+IC0NCj4gKyAgICAgICBmb3IgKGkgPSAwOyAoY21hID0gZG1hX2Nv
bnRpZ3VvdXNfZ2V0X3Jlc2VydmVkX3JlZ2lvbihpKSkgIT0gTlVMTDsgaSsrKSB7DQo+ICAgICAg
ICAgICAgICAgICByZXQgPSBfX2FkZF9jbWFfaGVhcChjbWEsIGNtYV9nZXRfbmFtZShjbWEpKTsN
Cj4gICAgICAgICAgICAgICAgIGlmIChyZXQpIHsNCj4gICAgICAgICAgICAgICAgICAgICAgICAg
cHJfd2FybigiRmFpbGVkIHRvIGFkZCBDTUEgaGVhcCAlcyIsIGNtYV9nZXRfbmFtZShjbWEpKTsN
Cj4gICAgICAgICAgICAgICAgICAgICAgICAgY29udGludWU7DQo+ICAgICAgICAgICAgICAgICB9
DQo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2RtYS1tYXAtb3BzLmggYi9pbmNsdWRlL2xp
bnV4L2RtYS1tYXAtb3BzLmgNCj4gaW5kZXggNjBiNjM3NTZkZjgyMWQ4Mzk0MzY2MThmMWZjYTJi
ZmEzZWFiZTA3NS4uMzAwN2M2OGE4ZWM1Yjg1OTkwZDE5MzhkMDRhMmYwNWMxYTcxYWNkYiAxMDA2
NDQNCj4gLS0tIGEvaW5jbHVkZS9saW51eC9kbWEtbWFwLW9wcy5oDQo+ICsrKyBiL2luY2x1ZGUv
bGludXgvZG1hLW1hcC1vcHMuaA0KPiBAQCAtMTEwLDEwICsxMTAsMTEgQEAgYm9vbCBkbWFfcmVs
ZWFzZV9mcm9tX2NvbnRpZ3VvdXMoc3RydWN0IGRldmljZSAqZGV2LCBzdHJ1Y3QgcGFnZSAqcGFn
ZXMsDQo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGludCBjb3VudCk7DQo+ICBz
dHJ1Y3QgcGFnZSAqZG1hX2FsbG9jX2NvbnRpZ3VvdXMoc3RydWN0IGRldmljZSAqZGV2LCBzaXpl
X3Qgc2l6ZSwgZ2ZwX3QgZ2ZwKTsNCj4gIHZvaWQgZG1hX2ZyZWVfY29udGlndW91cyhzdHJ1Y3Qg
ZGV2aWNlICpkZXYsIHN0cnVjdCBwYWdlICpwYWdlLCBzaXplX3Qgc2l6ZSk7DQo+DQo+ICB2b2lk
IGRtYV9jb250aWd1b3VzX2Vhcmx5X2ZpeHVwKHBoeXNfYWRkcl90IGJhc2UsIHVuc2lnbmVkIGxv
bmcgc2l6ZSk7DQo+ICtzdHJ1Y3QgY21hICpkbWFfY29udGlndW91c19nZXRfcmVzZXJ2ZWRfcmVn
aW9uKHVuc2lnbmVkIGludCBpZHgpOw0KPiAgI2Vsc2UgLyogQ09ORklHX0RNQV9DTUEgKi8NCj4g
IHN0YXRpYyBpbmxpbmUgc3RydWN0IGNtYSAqZGV2X2dldF9jbWFfYXJlYShzdHJ1Y3QgZGV2aWNl
ICpkZXYpDQo+ICB7DQo+ICAgICAgICAgcmV0dXJuIE5VTEw7DQo+ICB9DQo+IEBAIC0xNDgsMTAg
KzE0OSwxNCBAQCBzdGF0aWMgaW5saW5lIHZvaWQgZG1hX2ZyZWVfY29udGlndW91cyhzdHJ1Y3Qg
ZGV2aWNlICpkZXYsIHN0cnVjdCBwYWdlICpwYWdlLA0KPiAgICAgICAgIF9fZnJlZV9wYWdlcyhw
YWdlLCBnZXRfb3JkZXIoc2l6ZSkpOw0KPiAgfQ0KPiAgc3RhdGljIGlubGluZSB2b2lkIGRtYV9j
b250aWd1b3VzX2Vhcmx5X2ZpeHVwKHBoeXNfYWRkcl90IGJhc2UsIHVuc2lnbmVkIGxvbmcgc2l6
ZSkNCj4gIHsNCj4gIH0NCj4gK3N0YXRpYyBpbmxpbmUgc3RydWN0IGNtYSAqZG1hX2NvbnRpZ3Vv
dXNfZ2V0X3Jlc2VydmVkX3JlZ2lvbih1bnNpZ25lZCBpbnQgaWR4KQ0KPiArew0KPiArICAgICAg
IHJldHVybiBOVUxMOw0KPiArfQ0KPiAgI2VuZGlmIC8qIENPTkZJR19ETUFfQ01BKi8NCj4NCj4g
ICNpZmRlZiBDT05GSUdfRE1BX0RFQ0xBUkVfQ09IRVJFTlQNCj4gIGludCBkbWFfZGVjbGFyZV9j
b2hlcmVudF9tZW1vcnkoc3RydWN0IGRldmljZSAqZGV2LCBwaHlzX2FkZHJfdCBwaHlzX2FkZHIs
DQo+ICAgICAgICAgICAgICAgICBkbWFfYWRkcl90IGRldmljZV9hZGRyLCBzaXplX3Qgc2l6ZSk7
DQo+IGRpZmYgLS1naXQgYS9rZXJuZWwvZG1hL2NvbnRpZ3VvdXMuYyBiL2tlcm5lbC9kbWEvY29u
dGlndW91cy5jDQo+IGluZGV4IGM1NjAwNGQzMTRkYzJlNDM2Y2RkZjNiMjBhNGVlNmNlODE3OGJl
ZTQuLjE0YmQ1NGZiNzU4NTM3ZjAxYTZmZTI3MzE4ZTdiNjgzOTY0ZTIwYjEgMTAwNjQ0DQo+IC0t
LSBhL2tlcm5lbC9kbWEvY29udGlndW91cy5jDQo+ICsrKyBiL2tlcm5lbC9kbWEvY29udGlndW91
cy5jDQo+IEBAIC00NTYsMTAgKzQ1NiwzMiBAQCB2b2lkIGRtYV9mcmVlX2NvbnRpZ3VvdXMoc3Ry
dWN0IGRldmljZSAqZGV2LCBzdHJ1Y3QgcGFnZSAqcGFnZSwgc2l6ZV90IHNpemUpDQo+ICAjaW5j
bHVkZSA8bGludXgvb2ZfcmVzZXJ2ZWRfbWVtLmg+DQo+DQo+ICAjdW5kZWYgcHJfZm10DQo+ICAj
ZGVmaW5lIHByX2ZtdChmbXQpIGZtdA0KPg0KPiArc3RhdGljIHN0cnVjdCBjbWEgKnJtZW1fY21h
X2FyZWFzW01BWF9DTUFfQVJFQVNdOw0KPiArc3RhdGljIHVuc2lnbmVkIGludCBybWVtX2NtYV9h
cmVhc19udW07DQo+ICsNCj4gK3N0YXRpYyBpbnQgcm1lbV9jbWFfaW5zZXJ0X2FyZWEoc3RydWN0
IGNtYSAqY21hKQ0KPiArew0KPiArICAgICAgIGlmIChybWVtX2NtYV9hcmVhc19udW0gPj0gQVJS
QVlfU0laRShybWVtX2NtYV9hcmVhcykpDQo+ICsgICAgICAgICAgICAgICByZXR1cm4gLUVJTlZB
TDsNCj4gKw0KPiArICAgICAgIHJtZW1fY21hX2FyZWFzW3JtZW1fY21hX2FyZWFzX251bSsrXSA9
IGNtYTsNCj4gKw0KPiArICAgICAgIHJldHVybiAwOw0KPiArfQ0KPiArDQo+ICtzdHJ1Y3QgY21h
ICpkbWFfY29udGlndW91c19nZXRfcmVzZXJ2ZWRfcmVnaW9uKHVuc2lnbmVkIGludCBpZHgpDQo+
ICt7DQo+ICsgICAgICAgaWYgKGlkeCA+PSBybWVtX2NtYV9hcmVhc19udW0pDQo+ICsgICAgICAg
ICAgICAgICByZXR1cm4gTlVMTDsNCj4gKw0KPiArICAgICAgIHJldHVybiBybWVtX2NtYV9hcmVh
c1tpZHhdOw0KPiArfQ0KPiArRVhQT1JUX1NZTUJPTF9HUEwoZG1hX2NvbnRpZ3VvdXNfZ2V0X3Jl
c2VydmVkX3JlZ2lvbik7DQo+ICsNCj4gIHN0YXRpYyBpbnQgcm1lbV9jbWFfZGV2aWNlX2luaXQo
c3RydWN0IHJlc2VydmVkX21lbSAqcm1lbSwgc3RydWN0IGRldmljZSAqZGV2KQ0KPiAgew0KPiAg
ICAgICAgIGRldi0+Y21hX2FyZWEgPSBybWVtLT5wcml2Ow0KPiAgICAgICAgIHJldHVybiAwOw0K
PiAgfQ0KPiBAQCAtNTA0LDEzICs1MjYsMTMgQEAgc3RhdGljIGludCBfX2luaXQgcm1lbV9jbWFf
c2V0dXAoc3RydWN0IHJlc2VydmVkX21lbSAqcm1lbSkNCj4gICAgICAgICBybWVtLT5wcml2ID0g
Y21hOw0KPg0KPiAgICAgICAgIHByX2luZm8oIlJlc2VydmVkIG1lbW9yeTogY3JlYXRlZCBDTUEg
bWVtb3J5IHBvb2wgYXQgJXBhLCBzaXplICVsZCBNaUJcbiIsDQo+ICAgICAgICAgICAgICAgICAm
cm1lbS0+YmFzZSwgKHVuc2lnbmVkIGxvbmcpcm1lbS0+c2l6ZSAvIFNaXzFNKTsNCj4NCj4gLSAg
ICAgICBlcnIgPSBkbWFfaGVhcF9jbWFfcmVnaXN0ZXJfaGVhcChjbWEpOw0KPiArICAgICAgIGVy
ciA9IHJtZW1fY21hX2luc2VydF9hcmVhKGNtYSk7DQo+ICAgICAgICAgaWYgKGVycikNCj4gLSAg
ICAgICAgICAgICAgIHByX3dhcm4oIkNvdWxkbid0IHJlZ2lzdGVyIENNQSBoZWFwLiIpOw0KPiAr
ICAgICAgICAgICAgICAgcHJfd2FybigiQ291bGRuJ3Qgc3RvcmUgQ01BIHJlc2VydmVkIGFyZWEu
Iik7DQo+DQo+ICAgICAgICAgcmV0dXJuIDA7DQo+ICB9DQo+ICBSRVNFUlZFRE1FTV9PRl9ERUNM
QVJFKGNtYSwgInNoYXJlZC1kbWEtcG9vbCIsIHJtZW1fY21hX3NldHVwKTsNCj4gICNlbmRpZg0K
Pg0KPiAtLQ0KPiAyLjUzLjANCj4NCj4NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGlu
YXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
