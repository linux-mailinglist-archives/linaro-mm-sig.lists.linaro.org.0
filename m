Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 76GmOBdxVmp95gAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:25:43 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E566757633
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:25:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=redhat.com header.s=mimecast20190719 header.b=FMU+JrBr;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=redhat.com (policy=quarantine)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A033440A33
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 17:25:42 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id 9C52E40D7A
	for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Jul 2026 10:50:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1783507814;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=7RthwfiaiuQwFULsU9rLR+4p2hP6BkmVyKgFOz4tjmA=;
	b=FMU+JrBrk2HgDx4hFL051O3Dj1Ltwx2KjgGNWrf6Z8/8k5CcG12eoweHr+ca2zHhiOJ9K6
	GEePrF87vcjuTQ7nt+5xOdyhBKNHO3maPIF2puM8yqV1kIBGcEqDo9bt1Fqo+CofkPRFYx
	zS/Op2k/CTIYByRUaPRBnoQCn1KcHO8=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-465-JgPXIEG5Mp6vaIA6h1zySw-1; Wed, 08 Jul 2026 06:50:12 -0400
X-MC-Unique: JgPXIEG5Mp6vaIA6h1zySw-1
X-Mimecast-MFC-AGG-ID: JgPXIEG5Mp6vaIA6h1zySw_1783507811
Received: by mail-wm1-f70.google.com with SMTP id 5b1f17b1804b1-493c20d0468so7259815e9.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 08 Jul 2026 03:50:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783507811; x=1784112611;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=7RthwfiaiuQwFULsU9rLR+4p2hP6BkmVyKgFOz4tjmA=;
        b=VgMwjlpu+f9B+W5HMhq7KSRsY1YvNYCFyXclT+tBAXD4h3irkUYbSOyHghoU0mlCkq
         MUcCPo8t5HzM1oJ8Af3jtaWTOtgvTeKLy9sZHd8WN8VTJyLxaRSIvEmT4t1BOe2pMESK
         11dAVsCD8NgUVw6C4hOy7fhFIPYIj4JEXCrQZp1JLrAD5eWQ/+Lwyosqn7SHrFqGsbtj
         vPcapCznXCaSDyYCV0nEz6NFRf5p5dnYvjF3MVzbDjDyUn8eMoslU9kYsfrojqaXknns
         AzheFASYHa9Ekf98mE45znam7pVKMn4uYkcj/nyjw89163XJPEntVFVYNtpHlmnA9bVY
         OZZA==
X-Forwarded-Encrypted: i=1; AHgh+RoVyq4rOMiwtdryi3f/UnTyFBSs9KHM5NPRNl3NIFBfUZ7HBXSVOTXoQ750wLOtKqODWDhnu+o6P0xO9VZ/@lists.linaro.org
X-Gm-Message-State: AOJu0Yy/K/W39RUEniyM1GIeXDffe2UhJn2ageZ2fq27WL/on64/OcfI
	7Vzp7zTQu6LroyveFKkEJzYzJSzk1k0tEL07Bw4hq3c4rQoHs5T22jXnzfpsL4kDbG038GKBWVx
	pwbNwimfsByG7+4Id7XrXKB/B3q8zNmywIo5yyJlH5FXkhWlrLOlK+lbRaXdotEdRgKM2
X-Gm-Gg: AfdE7ckeGfll6oxhYyHN1CrTQj4ktBEjhNWuf4spFV5x6UR0ePfbhmNpwRSV//7nTL1
	Xo7D15FwcVVSC63fV0ss5obro1Vc4cgMnkl4kInIMqNLMYgkYGNlF+ATWfKpJ1LgEYZ34yuNtlt
	xQ1BY1QewIrKoxTK6crTu8D1hQ6ivYUPNOoH8uXQF4vw9Sr+ZTNp8lSiSYwms/oxL4DAtOEeOJC
	ZUlhpxhub/r9olxuRqqDkHam+dJy9x4rIoEZYOtWC/Jm6qLMhYG0IMUTYkYsTw2DmkfIu0wS1xb
	rFMlObrdbYMDX3cad2uDBwhdl+HiCtaBCf2Syp2vzVVJGVizFlgWfzZS3F93xEqsVeVJTua8xqH
	rnM03Yq/jaq3lq+h71tIQxCuLX536tfTLL22QmcB4kpaLn/PSx1+JeugE+EkiHTZwKtN3Tcwjrj
	e66UmirZa7ESYW
X-Received: by 2002:a05:600c:3b92:b0:493:e892:f03c with SMTP id 5b1f17b1804b1-493e892f05amr3891715e9.10.1783507811117;
        Wed, 08 Jul 2026 03:50:11 -0700 (PDT)
X-Received: by 2002:a05:600c:3b92:b0:493:e892:f03c with SMTP id 5b1f17b1804b1-493e892f05amr3891245e9.10.1783507810639;
        Wed, 08 Jul 2026 03:50:10 -0700 (PDT)
Received: from ?IPV6:2a0d:3344:5521:6b10:58fd:68f:7756:389d? ([2a0d:3344:5521:6b10:58fd:68f:7756:389d])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-493e0f40912sm123922735e9.4.2026.07.08.03.50.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Jul 2026 03:50:10 -0700 (PDT)
Message-ID: <15e72c82-ca99-481b-bd53-744fabd503b0@redhat.com>
Date: Wed, 8 Jul 2026 12:50:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Mina Almasry <almasrymina@google.com>,
 Bobby Eshleman <bobbyeshleman@gmail.com>
References: <20260701-tcpdm-large-niovs-v4-0-ca4654f37570@meta.com>
 <20260701-tcpdm-large-niovs-v4-1-ca4654f37570@meta.com>
 <CAHS8izNdJ1LTOr_pLjXef6Yv-=JOFPe1GcZtcbStD93Tkpy1XQ@mail.gmail.com>
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <CAHS8izNdJ1LTOr_pLjXef6Yv-=JOFPe1GcZtcbStD93Tkpy1XQ@mail.gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: aQcSwexnKE4eqcTsHv3VKrHujWe-7nt8pNmKo-5VvmI_1783507811
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spamd-Bar: ----
X-MailFrom: pabeni@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: LKBGYQQ65NWJRCQ7BMN33X2K2PM4UMB3
X-Message-ID-Hash: LKBGYQQ65NWJRCQ7BMN33X2K2PM4UMB3
X-Mailman-Approved-At: Tue, 14 Jul 2026 17:19:47 +0000
CC: Donald Hunter <donald.hunter@gmail.com>, Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Simon Horman <horms@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, Gerd Hoffmann <kraxel@redhat.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Shuah Khan <shuah@kernel.org>, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kselftest@vger.kernel.org, sdf@fomichev.me, razor@blackwall.org, daniel@iogearbox.net, matttbe@kernel.org, skhawaja@google.com, dw@davidwei.uk, Joe Damato <joe@dama.to>, Bobby Eshleman <bobbyeshleman@meta.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH net-next v4 1/3] net: devmem: allow rx-buf-size > PAGE_SIZE per dmabuf binding
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LKBGYQQ65NWJRCQ7BMN33X2K2PM4UMB3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [4.59 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[150];
	R_DKIM_REJECT(1.00)[redhat.com:s=mimecast20190719];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:almasrymina@google.com,m:bobbyeshleman@gmail.com,m:donald.hunter@gmail.com,m:kuba@kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:horms@kernel.org,m:andrew+netdev@lunn.ch,m:kraxel@redhat.com,m:vivek.kasireddy@intel.com,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:shuah@kernel.org,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kselftest@vger.kernel.org,m:sdf@fomichev.me,m:razor@blackwall.org,m:daniel@iogearbox.net,m:matttbe@kernel.org,m:skhawaja@google.com,m:dw@davidwei.uk,m:joe@dama.to,m:bobbyeshleman@meta.com,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	FREEMAIL_TO(0.00)[google.com,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[pabeni@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:-];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pabeni@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,davemloft.net,google.com,lunn.ch,redhat.com,intel.com,linaro.org,amd.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,fomichev.me,blackwall.org,iogearbox.net,davidwei.uk,dama.to,meta.com];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:from_smtp,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7E566757633

T24gNy83LzI2IDEwOjM2IFBNLCBNaW5hIEFsbWFzcnkgd3JvdGU6DQo+IE9uIFdlZCwgSnVsIDEs
IDIwMjYgYXQgMTI6MjLigK9QTSBCb2JieSBFc2hsZW1hbiA8Ym9iYnllc2hsZW1hbkBnbWFpbC5j
b20+IHdyb3RlOg0KPj4NCj4+IEZyb206IEJvYmJ5IEVzaGxlbWFuIDxib2JieWVzaGxlbWFuQG1l
dGEuY29tPg0KPj4NCj4+IEV2ZXJ5IGRldm1lbSBkbWFidWYgYmluZGluZyB0b2RheSBoYW5kcyB0
aGUgcGFnZV9wb29sIFBBR0VfU0laRSBuaW92cy4NCj4+IFRoaXMgY2FwcyBhIHNpbmdsZSBSWCBk
ZXNjcmlwdG9yIGF0IFBBR0VfU0laRSwgYnVybmluZyBDUFUgb24gYnVmZmVyDQo+PiBjaHVybiBm
b3IgbGFyZ2UgZmxvd3MuDQo+Pg0KPj4gQWRkIGEgYmluZC10aW1lIG5ldGxpbmsgYXR0cmlidXRl
LCBORVRERVZfQV9ETUFCVUZfUlhfQlVGX1NJWkUsIHRoYXQNCj4+IGxldHMgdXNlcnNwYWNlIHJl
cXVlc3QgYSBsYXJnZXIgbmlvdiBzaXplLiBUaGUgdmFsdWUgbXVzdCBiZSBhIHBvd2VyIG9mDQo+
PiB0d28gPj0gUEFHRV9TSVpFLg0KPj4NCj4+IE1lYXN1cmVtZW50cw0KPj4gLS0tLS0tLS0tLS0t
DQoNCkNoZWNrcGF0Y2ggY29tcGxhaW5zIGFib3V0IHRoaXMgc2VwYXJhdG9yIHVzYWdlOg0KDQpF
UlJPUjogSW52YWxpZCBjb21taXQgc2VwYXJhdG9yIC0gc29tZSB0b29scyBtYXkgaGF2ZSBwcm9i
bGVtcyBhcHBseWluZyB0aGlzDQojMTU6DQotLS0tLS0tLS0tLS0NCg0KUGxlYXNlIHJlcGxhY2Ug
b3IgcmVtb3ZlIGl0IGluIHRoZSBuZXh0IHJldmlzaW9uDQoNCj4+IEBAIC05MCwxNiArOTAsMTcg
QEAgbmV0X2Rldm1lbV9hbGxvY19kbWFidWYoc3RydWN0IG5ldF9kZXZtZW1fZG1hYnVmX2JpbmRp
bmcgKmJpbmRpbmcpDQo+PiAgICAgICAgIHN0cnVjdCBkbWFidWZfZ2VucG9vbF9jaHVua19vd25l
ciAqb3duZXI7DQo+PiAgICAgICAgIHVuc2lnbmVkIGxvbmcgZG1hX2FkZHI7DQo+PiAgICAgICAg
IHN0cnVjdCBuZXRfaW92ICpuaW92Ow0KPj4gLSAgICAgICBzc2l6ZV90IG9mZnNldDsNCj4+IC0g
ICAgICAgc3NpemVfdCBpbmRleDsNCj4+ICsgICAgICAgc2l6ZV90IG9mZnNldDsNCj4+ICsgICAg
ICAgc2l6ZV90IGluZGV4Ow0KPj4NCj4gDQo+IG5pdDogSSB3b3VsZCBrZWVwIHRoaXMgc2lnbmVk
LiBTb21lIG9mIHRoZSBtb3N0IGZydXN0cmF0aW5nIGlzc3VlcyBJDQo+IHJhbiBpbnRvIGlzIHNv
bWUgb2YgdGhlIHVuZGVyZmxvd2luZyBhbmQgdGhlbiBwYXNzaW5nIGEgPiBjaGVjayBvcg0KPiBz
b21ldGhpbmcuIEFsdGhvdWdoIGlmIHRoZSBMTE0gaXMgbm90IGNvbXBsYWluaW5nIGFib3V0IHRo
aXMNCj4gcGFydGljdWxhciBjYXNlLCB0aGVyZSBpcyBwcm9iYWJseSBubyBpc3N1ZSB3aXRoIGl0
LiBJIGFsc28gbm90aWNlIGENCj4gbG90IG9mIGV4aXN0aW5nIGNvZGUgdGhhdCBkZWFscyB3aXRo
IGluZGV4ZXMgYW5kIG9mZnNldHMgZ29lcyBmb3INCj4gc2lnbmVkLg0KDQpBdCB2ZXJ5IGxlYXN0
IHRoZSBhYm92ZSBjaGFuZ2Ugc2hvdWxkIGdvIGluIGEgc2VwYXJhdGUgcGF0Y2gsIGFzIGlzDQpx
dWl0ZSB1bnJlbGF0ZWQgZnJvbSB0aGUgcmVzdC4NCg0KL1ANCg0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3Qg
LS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4g
ZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
