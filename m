Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D23A6943B8
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Feb 2023 12:02:40 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D6B273EA50
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Feb 2023 11:02:38 +0000 (UTC)
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	by lists.linaro.org (Postfix) with ESMTPS id 45F9E3EA50
	for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Feb 2023 11:02:22 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=c7+dVyzF;
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.218.47 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-ej1-f47.google.com with SMTP id n10so3919183ejc.4
        for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Feb 2023 03:02:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=70NMlQcw2iBDbRyN8g9R2UaDW8v0WsBUWLxPKnQsybw=;
        b=c7+dVyzFuA7FINtkSmjmxRUKSB2Bl19v2Vt3RFREtrf0BounA7cRttqNJLgOoW3+ub
         aX+Frz6guaGOHS2YiK8mYQyzthBjzxt+Yh01a9Q0SprnC7pXvfGaF2tMWf77AnWfmvVd
         Ya+doB0PJj6PpjMpGEF6tq85pWy++zHQlz1pmF94OnyNLjqnbo0MA4JJRVJY9hUXzHLq
         wL56JmJbnZb4Eu0Rv6bZnNity5ZbCzS+QBldrB83Z2d7HhS+4sgxakPsPfqCC/fRcUPw
         FVlkQjmuW+TccEtYrQP3E/L2z+r8MYnIuBK6R+wYShX9tSgFQMWhGcyAdgfjBCGzaZ3i
         cFRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=70NMlQcw2iBDbRyN8g9R2UaDW8v0WsBUWLxPKnQsybw=;
        b=U7uaZ2FphcU/ShSoIodPce+TbT81TJdb2B3rJlO02QkRPZQMDaaVGe0gA9awbxrKW2
         3RnRxUK40MuGp9zogPMqAGCb9voPoqHrbHTKDXpN2+v8YCFIkZ5Sep5RUiJqeOYbp1zA
         puIW+xJ1Gcm1E8mPW/TFT1LlDNAMhYMoGw+hsm+RyVFAf7npMxmLMh7rRuGIa13EgDkd
         7vo7stf0UjfCY6lsgfnRWrBRAeCd3NCZH9cHIUXs128mKvMnpVqVeFHRj6ZmEdmhxck1
         zdHBmawdFn8E8zxJQBQ3Z1CmrG3OGet5H5gcnhR50yIzf5XEId9rePBYEE6QCPSHCJBp
         0Q5w==
X-Gm-Message-State: AO0yUKWiyUZNYhDdCqXPSwA6xqIk1lq6lzN5nU1eBMNnqzd4KKEhHvDd
	ZvRchz83PEBcdMYVELL6iuCn45B1
X-Google-Smtp-Source: AK7set8cYRCrSRY/vmPzO6qb6ELLhtVHAtQS9hVUyeOcISQNnglfyNIgD+XLwVGCSteK3zVaYKevDw==
X-Received: by 2002:a17:907:8686:b0:8aa:be85:fc56 with SMTP id qa6-20020a170907868600b008aabe85fc56mr28490957ejc.47.1676286141103;
        Mon, 13 Feb 2023 03:02:21 -0800 (PST)
Received: from jade (h-46-59-78-111.A175.priv.bahnhof.se. [46.59.78.111])
        by smtp.gmail.com with ESMTPSA id d18-20020a1709063cf200b008af4dadd9c4sm5217871ejh.116.2023.02.13.03.02.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Feb 2023 03:02:20 -0800 (PST)
Date: Mon, 13 Feb 2023 12:02:18 +0100
From: Jens Wiklander <jens.wiklander@linaro.org>
To: Cyrille Fleury <cyrille.fleury@nxp.com>
Message-ID: <Y+oYundNEN9TDiQ8@jade>
References: <20220812143055.12938-2-olivier.masse@nxp.com>
 <30534fadb8172088eddef46ae71d87c167cbf32e.camel@nxp.com>
 <CAFA6WYOMCswgHHxsgc9Hgi7rmTPaZDqce=BixvYoFTfL0bTFDQ@mail.gmail.com>
 <PA4PR04MB75204E8D2B959893A04D55F388D69@PA4PR04MB7520.eurprd04.prod.outlook.com>
 <CAFA6WYPGT8xZnB1idcxcHT1bvM=0kwFssBQbn063-qg=czM-ZQ@mail.gmail.com>
 <CAN5uoS8XgvAKVwKHx-uOe3hAa4Jrd5FJt6xNOG5s-simkRND9w@mail.gmail.com>
 <c86d1a46af6e076038b3f0c2dd68213ff1e8b254.camel@nxp.com>
 <CAN5uoS-A8EovbnxvcXqiYHcy95d-PTYUZvnNr3=kf84AGkG8Kw@mail.gmail.com>
 <f3ccd7ad-0bbb-be39-c989-765552e2c6af@linaro.org>
 <PA4PR04MB75207FF08A6C2EEC1944FFFE88D79@PA4PR04MB7520.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <PA4PR04MB75207FF08A6C2EEC1944FFFE88D79@PA4PR04MB7520.eurprd04.prod.outlook.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 45F9E3EA50
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[linaro.org:dkim,linaro.org:email,amd.com:email,trustedfirmware.org:email,trustedfirmware.org:url,ti.com:email,nxp.com:email,lists.freedesktop.org:email];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.218.47:from]
X-Rspamd-Action: no action
Message-ID-Hash: A2HLUWCTHS4W3T7LGAZUAOT73JDDGZUK
X-Message-ID-Hash: A2HLUWCTHS4W3T7LGAZUAOT73JDDGZUK
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jerome Forissier <jerome.forissier@linaro.org>, Etienne Carriere <etienne.carriere@linaro.org>, Olivier Masse <olivier.masse@nxp.com>, "sumit.garg@linaro.org" <sumit.garg@linaro.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "fredgc@google.com" <fredgc@google.com>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "afd@ti.com" <afd@ti.com>, "op-tee@lists.trustedfirmware.org" <op-tee@lists.trustedfirmware.org>, "joakim.bech@linaro.org" <joakim.bech@linaro.org>, "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>, Peter Griffin <peter.griffin@linaro.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, =?utf-8?Q?Cl=C3=A9ment?= Faure <clement.faure@nxp.com>, "christian.koenig@amd.com" <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [EXT] Re: [PATCH v2 1/1] tee: new ioctl to a register tee_shm from a dmabuf file descriptor
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/A2HLUWCTHS4W3T7LGAZUAOT73JDDGZUK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQoNCk9uIEZyaSwgRmViIDAzLCAyMDIzIGF0IDAyOjEzOjUzUE0gKzAwMDAsIEN5cmlsbGUg
RmxldXJ5IHdyb3RlOg0KPiANCj4gDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZy
b206IEplcm9tZSBGb3Jpc3NpZXIgPGplcm9tZS5mb3Jpc3NpZXJAbGluYXJvLm9yZz4NCj4gU2Vu
dDogRnJpZGF5LCBGZWJydWFyeSAzLCAyMDIzIDE6MzIgUE0NCj4gVG86IEV0aWVubmUgQ2Fycmll
cmUgPGV0aWVubmUuY2FycmllcmVAbGluYXJvLm9yZz47IE9saXZpZXIgTWFzc2UgPG9saXZpZXIu
bWFzc2VAbnhwLmNvbT4NCj4gQ2M6IHN1bWl0LmdhcmdAbGluYXJvLm9yZzsgbGludXgtbWVkaWFA
dmdlci5rZXJuZWwub3JnOyBmcmVkZ2NAZ29vZ2xlLmNvbTsgbGluYXJvLW1tLXNpZ0BsaXN0cy5s
aW5hcm8ub3JnOyBhZmRAdGkuY29tOyBvcC10ZWVAbGlzdHMudHJ1c3RlZGZpcm13YXJlLm9yZzsg
amVucy53aWtsYW5kZXJAbGluYXJvLm9yZzsgam9ha2ltLmJlY2hAbGluYXJvLm9yZzsgc3VtaXQu
c2Vtd2FsQGxpbmFyby5vcmc7IEN5cmlsbGUgRmxldXJ5IDxjeXJpbGxlLmZsZXVyeUBueHAuY29t
PjsgUGV0ZXIgR3JpZmZpbiA8cGV0ZXIuZ3JpZmZpbkBsaW5hcm8ub3JnPjsgbGludXgta2VybmVs
QHZnZXIua2VybmVsLm9yZzsgZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgQ2zDqW1l
bnQgRmF1cmUgPGNsZW1lbnQuZmF1cmVAbnhwLmNvbT47IGNocmlzdGlhbi5rb2VuaWdAYW1kLmNv
bQ0KPiBTdWJqZWN0OiBSZTogW0VYVF0gUmU6IFtQQVRDSCB2MiAxLzFdIHRlZTogbmV3IGlvY3Rs
IHRvIGEgcmVnaXN0ZXIgdGVlX3NobSBmcm9tIGEgZG1hYnVmIGZpbGUgZGVzY3JpcHRvcg0KPiAN
Cj4gT24gMi8zLzIzIDE1OjEyLCBDeXJpbGxlIEZsZXVyeSB3cm90ZToNCj4gSGkgYWxsLA0KPiAN
Cj4gPk9uIDIvMy8yMyAxMjozNywgRXRpZW5uZSBDYXJyaWVyZSB3cm90ZToNCj4gPj4gSGVsbCBh
bGwsDQo+ID4+DQo+ID4+ICtqZXJvbWUgZi4NCj4gPj4NCj4gPj4gT24gRnJpLCAzIEZlYiAyMDIz
IGF0IDEyOjAxLCBPbGl2aWVyIE1hc3NlIDxvbGl2aWVyLm1hc3NlQG54cC5jb20+IHdyb3RlOg0K
PiA+Pj4NCj4gPj4+IE9uIGpldS4sIDIwMjMtMDItMDIgYXQgMTA6NTggKzAxMDAsIEV0aWVubmUg
Q2FycmllcmUgd3JvdGU6DQo+ID4+Pj4gQ2F1dGlvbjogRVhUIEVtYWlsDQo+ID4+Pj4NCj4gPj4+
PiBPbiBUaHUsIDIgRmViIDIwMjMgYXQgMDk6MzUsIFN1bWl0IEdhcmcgPHN1bWl0LmdhcmdAbGlu
YXJvLm9yZz4NCj4gPj4+PiB3cm90ZToNCj4gPj4+Pj4gSGkgQ3lyaWxsZSwNCj4gPj4+Pj4NCj4g
Pj4+Pj4gUGxlYXNlIGRvbid0IHRvcCBwb3N0IGFzIGl0IG1ha2VzIGl0IGhhcmRlciB0byBmb2xs
b3ctdXAuDQo+ID4+Pj4+DQo+ID4+Pj4+IE9uIFRodSwgMiBGZWIgMjAyMyBhdCAxMzoyNiwgQ3ly
aWxsZSBGbGV1cnkgPGN5cmlsbGUuZmxldXJ5QG54cC5jb20NCj4gPj4+Pj4+IHdyb3RlOg0KPiA+
Pj4+Pj4gSGkgU3VtaXQsIGFsbA0KPiA+Pj4+Pj4NCj4gPj4+Pj4+IFVwc3RyZWFtIE9QLVRFRSBz
aG91bGQgc3VwcG9ydCByZWdpc3RlcmluZyBhIGRtYWJ1ZiBzaW5jZSBhIHdoaWxlLCANCj4gPj4+
Pj4+IGdpdmVuIGhvdyB3aWRlbHkgZG1hYnVmIGlzIHVzZWQgaW4gTGludXggZm9yIHBhc3Npbmcg
YnVmZmVycyANCj4gPj4+Pj4+IGFyb3VuZCBiZXR3ZWVuIGRldmljZXMuDQo+ID4+Pj4+Pg0KPiA+
Pj4+Pj4gUHVycG9zZSBvZiB0aGUgbmV3IHJlZ2lzdGVyX3RlZV9zaG0gaW9jdGwgaXMgdG8gYWxs
b3cgT1BURUUgdG8gdXNlIA0KPiA+Pj4+Pj4gbWVtb3J5IGFsbG9jYXRlZCBmcm9tIHRoZSBleGl0
aW5nIGxpbnV4IGRtYSBidWZmZXIuIFdlIGRvbid0IG5lZWQgDQo+ID4+Pj4+PiB0byBoYXZlIHNl
Y3VyZSBkbWEtaGVhcCB1cCBzdHJlYW1lZC4NCj4gPj4+Pj4+DQo+ID4+Pj4+PiBZb3UgbWVudGlv
bmVkIHNlY3VyZSBkbWEtYnVmZmVyLCBidXQgc2VjdXJlIGRtYS1idWZmZXIgaXMgYSBkbWEtIA0K
PiA+Pj4+Pj4gYnVmZmVyLCBzbyB0aGUgd29yayB0byBiZSBkb25lIGZvciBzZWN1cmUgb3IgInJl
Z3VsYXIiIGRtYSBidWZmZXJzIA0KPiA+Pj4+Pj4gYnkgdGhlIHJlZ2lzdGVyX3RlZV9zaG0gaW9j
dGwgaXMgMTAwJSB0aGUgc2FtZS4NCj4gPj4+Pj4+DQo+ID4+Pj4+PiBUaGUgc2NvcGUgb2YgdGhp
cyBpb2N0bCBpcyBsaW1pdGVkIHRvIHdoYXQgZXhpc3RpbmcgdXBzdHJlYW0gZG1hLSANCj4gPj4+
Pj4+IGJ1ZmZlcnMgYXJlOg0KPiA+Pj4+Pj4gICAgICAgICAtPiBzaGFyaW5nIGJ1ZmZlcnMgZm9y
IGhhcmR3YXJlIChETUEpIGFjY2VzcyBhY3Jvc3MgDQo+ID4+Pj4+PiBtdWx0aXBsZSBkZXZpY2Ug
ZHJpdmVycyBhbmQgc3Vic3lzdGVtcywgYW5kIGZvciBzeW5jaHJvbml6aW5nIA0KPiA+Pj4+Pj4g
YXN5bmNocm9ub3VzIGhhcmR3YXJlIGFjY2Vzcy4NCj4gPj4+Pj4+ICAgICAgICAtPiBJdCBtZWFu
cyBjb250aW51b3VzIG1lbW9yeSBvbmx5Lg0KPiA+Pj4+Pj4NCj4gPj4+Pj4+IFNvIGlmIHdlIHJl
ZHVjZSB0aGUgc2NvcGUgb2YgcmVnaXN0ZXIgdGVlX3NobSB0byBleGl0aW5nIGRtYS0gDQo+ID4+
Pj4+PiBidWZmZXIgYXJlYSwgdGhlIGN1cnJlbnQgcGF0Y2ggZG9lcyB0aGUgam9iLg0KPiA+Pj4+
Pg0KPiA+Pj4+PiBEbyB5b3UgaGF2ZSBhIGNvcnJlc3BvbmRpbmcgcmVhbCB3b3JsZCB1c2UtY2Fz
ZSBzdXBwb3J0ZWQgYnkgDQo+ID4+Pj4+IHVwc3RyZWFtIE9QLVRFRT8gQUZBSUssIHRoZSBTZWN1
cmUgRGF0YSBQYXRoIChTRFApIHVzZS1jYXNlIGlzIHRoZSANCj4gPj4+Pj4gb25lIHN1cHBvcnRl
ZCBpbiBPUC1URUUgdXBzdHJlYW0gYnV0IHdpdGhvdXQgc2VjdXJlIGRtYWJ1ZiBoZWFwIFsxXSAN
Cj4gPj4+Pj4gYXZhaWxhYmxlLCB0aGUgbmV3IGlvY3RsIGNhbid0IGJlIGV4ZXJjaXNlZC4NCj4g
Pj4+Pj4NCj4gPj4+Pj4gWzFdIA0KPiA+Pj4+PiBodHRwczovL2V1cjAxLnNhZmVsaW5rcy5wcm90
ZWN0aW9uLm91dGxvb2suY29tLz91cmw9aHR0cHMlM0ElMkYlMkZnDQo+ID4+Pj4+IGl0aHViLmNv
bSUyRk9QLVRFRSUyRm9wdGVlX3Rlc3QlMkZibG9iJTJGbWFzdGVyJTJGaG9zdCUyRnh0ZXN0JTJG
c2QNCj4gPj4+Pj4gcF9iYXNpYy5oJTIzTDE1JmRhdGE9MDUlN0MwMSU3Q2N5cmlsbGUuZmxldXJ5
JTQwbnhwLmNvbSU3QzlmZjk2MmZiNQ0KPiA+Pj4+PiA4ZjY0MDFjNTk3ODA4ZGIwNWUyYTY0YiU3
QzY4NmVhMWQzYmMyYjRjNmZhOTJjZDk5YzVjMzAxNjM1JTdDMCU3QzAlDQo+ID4+Pj4+IDdDNjM4
MTEwMjQzMjMyNDU3Mzc3JTdDVW5rbm93biU3Q1RXRnBiR1pzYjNkOGV5SldJam9pTUM0d0xqQXdN
REFpTEMNCj4gPj4+Pj4gSlFJam9pVjJsdU16SWlMQ0pCVGlJNklrMWhhV3dpTENKWFZDSTZNbjAl
M0QlN0MzMDAwJTdDJTdDJTdDJnNkYXRhPQ0KPiA+Pj4+PiBVTkI4OHJ2bWhRNXFSb0lHTiUyRnBT
NGNRVEVTNWpvTThBam95QUFZelBLbDAlM0QmcmVzZXJ2ZWQ9MA0KPiA+Pj4+DQo+ID4+Pj4gT1At
VEVFIGhhcyBzb21lIFNEUCB0ZXN0IHRhaHQgY2FuIGV4ZXJjaWNlIFNEUDogJ3h0ZXN0IA0KPiA+
Pj4+IHJlZ3Jlc3Npb25fMTAxNCcuDQo+ID4+Pj4gaHR0cHM6Ly9ldXIwMS5zYWZlbGlua3MucHJv
dGVjdGlvbi5vdXRsb29rLmNvbS8/dXJsPWh0dHBzJTNBJTJGJTJGZ2kNCj4gPj4+PiB0aHViLmNv
bSUyRk9QLVRFRSUyRm9wdGVlX3Rlc3QlMkZibG9iJTJGMy4yMC4wJTJGaG9zdCUyRnh0ZXN0JTJG
cmVncg0KPiA+Pj4+IGVzc2lvbl8xMDAwLmMlMjNMMTI1NiZkYXRhPTA1JTdDMDElN0NjeXJpbGxl
LmZsZXVyeSU0MG54cC5jb20lN0M5ZmY5DQo+ID4+Pj4gNjJmYjU4ZjY0MDFjNTk3ODA4ZGIwNWUy
YTY0YiU3QzY4NmVhMWQzYmMyYjRjNmZhOTJjZDk5YzVjMzAxNjM1JTdDMCUNCj4gPj4+PiA3QzAl
N0M2MzgxMTAyNDMyMzI0NTczNzclN0NVbmtub3duJTdDVFdGcGJHWnNiM2Q4ZXlKV0lqb2lNQzR3
TGpBd01EQQ0KPiA+Pj4+IGlMQ0pRSWpvaVYybHVNeklpTENKQlRpSTZJazFoYVd3aUxDSlhWQ0k2
TW4wJTNEJTdDMzAwMCU3QyU3QyU3QyZzZGF0DQo+ID4+Pj4gYT1lJTJCNDByd1d2dHZWRkc4YVda
TmV1JTJGZ2pNWFh2WjNwUmhKZkhMa2R1cm92cyUzRCZyZXNlcnZlZD0wDQo+ID4+Pj4NCj4gPj4+
PiBUaGUgdGVzdCByZWxpZXMgb24gb2xkIHN0YWdlZCBJT04gKyBsb2NhbCBzZWN1cmUgZG1hYnVm
IGhlYXBzIG5vIA0KPiA+Pj4+IG1vcmUgbWFpbnRhaW5lZCwgc28gdGhpcyB0ZXN0IGlzIGN1cnJl
bnRseSBub3QgZnVuY3Rpb25hbC4NCj4gPj4+PiBJZiB3ZSB1cGdyYWRlIHRoZSB0ZXN0IHRvIG1h
aW5saW5lIGRtYWJ1ZiBhbGxvYyBtZWFucywgYW5kIGFwcGx5IHRoZSANCj4gPj4+PiBjaGFuZ2Ug
ZGlzY3Vzc2VkIGhlcmUsIHdlIHNob3VsZCBiZSBhYmxlIHRvIHJlZ3VsYXJseSB0ZXN0IFNEUCBp
biANCj4gPj4+PiBPUC1URUUgcHJvamVjdCBDSS4NCj4gPj4+PiBUaGUgcGFydCB0byB1cGRhdGUg
aXMgdGhlIHVzZXJsYW5kIGFsbG9jYXRpb24gb2YgdGhlIGRtYWJ1ZjoNCj4gPj4+PiBodHRwczov
L2V1cjAxLnNhZmVsaW5rcy5wcm90ZWN0aW9uLm91dGxvb2suY29tLz91cmw9aHR0cHMlM0ElMkYl
MkZnaQ0KPiA+Pj4+IHRodWIuY29tJTJGT1AtVEVFJTJGb3B0ZWVfdGVzdCUyRmJsb2IlMkYzLjIw
LjAlMkZob3N0JTJGeHRlc3QlMkZzZHBfDQo+ID4+Pj4gYmFzaWMuYyUyM0w5MSZkYXRhPTA1JTdD
MDElN0NjeXJpbGxlLmZsZXVyeSU0MG54cC5jb20lN0M5ZmY5NjJmYjU4ZjYNCj4gPj4+PiA0MDFj
NTk3ODA4ZGIwNWUyYTY0YiU3QzY4NmVhMWQzYmMyYjRjNmZhOTJjZDk5YzVjMzAxNjM1JTdDMCU3
QzAlN0M2Mw0KPiA+Pj4+IDgxMTAyNDMyMzI0NTczNzclN0NVbmtub3duJTdDVFdGcGJHWnNiM2Q4
ZXlKV0lqb2lNQzR3TGpBd01EQWlMQ0pRSWpvDQo+ID4+Pj4gaVYybHVNeklpTENKQlRpSTZJazFo
YVd3aUxDSlhWQ0k2TW4wJTNEJTdDMzAwMCU3QyU3QyU3QyZzZGF0YT01clBWMWoNCj4gPj4+PiBx
enFqVmgyTjVwZFVXNDFZd0Y2RWtnSUR3Zmh5ZllrZ210ZFpJJTNEJnJlc2VydmVkPTANCj4gPj4+
Pg0KPiA+Pj4+DQo+ID4+Pg0KPiA+Pj4gdGhlIHRlc3Qgd2FzIGFscmVhZHkgdXBkYXRlZCB0byBz
dXBwb3J0IHNlY3VyZSBkbWEgaGVhcCB3aXRoIEtlcm5lbCANCj4gPj4+IHZlcnNpb24gNS4xMSBh
bmQgaGlnaGVyLiB0aGUgdXNlcmxhbmQgYWxsb2NhdGlvbiBjb3VsZCBiZSBmaW5kIGhlcmU6DQo+
ID4+PiBodHRwczovL2V1cjAxLnNhZmVsaW5rcy5wcm90ZWN0aW9uLm91dGxvb2suY29tLz91cmw9
aHR0cHMlM0ElMkYlMkZnaXQNCj4gPj4+IGh1Yi5jb20lMkZPUC1URUUlMkZvcHRlZV90ZXN0JTJG
YmxvYiUyRjMuMjAuMCUyRmhvc3QlMkZ4dGVzdCUyRnNkcF9iYQ0KPiA+Pj4gc2ljLmMlMjNMMTUz
JmRhdGE9MDUlN0MwMSU3Q2N5cmlsbGUuZmxldXJ5JTQwbnhwLmNvbSU3QzlmZjk2MmZiNThmNjQw
DQo+ID4+PiAxYzU5NzgwOGRiMDVlMmE2NGIlN0M2ODZlYTFkM2JjMmI0YzZmYTkyY2Q5OWM1YzMw
MTYzNSU3QzAlN0MwJTdDNjM4MTENCj4gPj4+IDAyNDMyMzI0NTczNzclN0NVbmtub3duJTdDVFdG
cGJHWnNiM2Q4ZXlKV0lqb2lNQzR3TGpBd01EQWlMQ0pRSWpvaVYybA0KPiA+Pj4gdU16SWlMQ0pC
VGlJNklrMWhhV3dpTENKWFZDSTZNbjAlM0QlN0MzMDAwJTdDJTdDJTdDJnNkYXRhPTAxSDk2bjQ3
SzZSDQo+ID4+PiBtQktaUWhSZGNxWDNuRTVWQkhPWE5mR3VNbW1rVlN2YyUzRCZyZXNlcnZlZD0w
DQo+ID4+Pg0KPiA+Pg0KPiA+PiBPaCwgcmlnaHQuIFNvIGZpbmUsIG9wdGVlX3Rlc3QgaXMgcmVh
ZHkgZm9yIHRoZSBuZXcgZmxhdm9yIG9mIHNlY3VyZSANCj4gPj4gYnVmZmVyIGZkJ3MuDQo+ID4+
DQo+ID4+DQo+ID4+PiBUaGlzIHVwZ3JhZGUgbmVlZCBhIExpbnV4IGRtYS1idWYgcGF0Y2g6DQo+
ID4+PiBodHRwczovL2V1cjAxLnNhZmVsaW5rcy5wcm90ZWN0aW9uLm91dGxvb2suY29tLz91cmw9
aHR0cHMlM0ElMkYlMkZsb3INCj4gPj4+IGUua2VybmVsLm9yZyUyRmFsbCUyRjIwMjIwODA1MTU0
MTM5LjJxa3F4d2tsdWZqcHNmZHglNDAwMDAzNzc0MDMzNTMlMg0KPiA+Pj4gRlQlMkYmZGF0YT0w
NSU3QzAxJTdDY3lyaWxsZS5mbGV1cnklNDBueHAuY29tJTdDOWZmOTYyZmI1OGY2NDAxYzU5Nzgw
DQo+ID4+PiA4ZGIwNWUyYTY0YiU3QzY4NmVhMWQzYmMyYjRjNmZhOTJjZDk5YzVjMzAxNjM1JTdD
MCU3QzAlN0M2MzgxMTAyNDMyMzINCj4gPj4+IDQ1NzM3NyU3Q1Vua25vd24lN0NUV0ZwYkdac2Iz
ZDhleUpXSWpvaU1DNHdMakF3TURBaUxDSlFJam9pVjJsdU16SWlMQw0KPiA+Pj4gSkJUaUk2SWsx
aGFXd2lMQ0pYVkNJNk1uMCUzRCU3QzMwMDAlN0MlN0MlN0Mmc2RhdGE9eUNTJTJCRGN1R3AlMkJh
ZkFMDQo+ID4+PiB0cHc3NE8xYkkwSyUyRndudCUyRk93NW9iMW5nZkRBMEUlM0QmcmVzZXJ2ZWQ9
MA0KPiA+Pg0KPiA+PiBASmVucywgQEplcm9tZSwgZG8gd2Ugd2FudCB0byBwaWNrIHRoZSAyIG5l
Y2Vzc2FyeSBMaW51eCBwYXRjaGVzIGluIA0KPiA+PiBvdXIgTGludXgga2VybmVsIGZvcmsgKGdp
dGh1Yi5jb20vbGluYXJvLXN3Zy9saW51eC5naXQpIHRvIGV4ZXJjaXNlIA0KPiA+PiBTRFAgaW4g
b3VyIENJIGFuZCBiZSByZWFkeSBpZiBkbWEtYnVmIHNlY3VyZSBoZWFwcyAocmVmIHJpZ2h0IGFi
b3ZlKSANCj4gPj4gaXMgYWNjZXB0ZWQgYW5kIG1lcmdlZCBpbiBtYWlubGluZSBrZXJuZWw/Lg0K
PiA+DQo+ID5Ib3cgd291bGQgdGhhdCBoZWxwPyBJIG1lYW4sIHdoZW4gdGhlIGtlcm5lbCBwYXRj
aGVzIGFyZSBtZXJnZWQgYW5kIGlmIHRoaW5ncyBicmVhayB3ZSBjYW4gbWFrZSB0aGUgbmVjZXNz
YXJ5IGFkanVzdG1lbnRzIGluIHRoZSBvcHRlZV90ZXN0IGFwcCBvciB3aGF0ZXZlciwgYnV0IGlu
IHRoZSBtZWFudGltZSBJIGRvbid0IHNlZSBtdWNoIHBvaW50LiBJIHN1cHBvc2UgdGhlIHBlb3Bs
ZSB3aG8gYXJlIGFjdGl2ZWx5IGRldmVsb3BpbmcgdGhlIHBhdGNoZXMgZG8gbWFrZSBzdXJlIGl0
IHdvcmtzIHdpdGggT1AtVEVFIDstKQ0KPiA+DQo+ID5SZWdhcmRzLA0KPiA+LS0NCj4gPkplcm9t
ZQ0KPiANCj4gQXMgbWVudGlvbmVkIGluIHRoZSBjb3ZlciBsZXR0ZXIsIHRoaXMgSU9DVEwgZ290
IHRlc3RlZCBieSBKZW5zIFdpa2xhbmRlciA8amVucy53aWtsYW5kZXJAbGluYXJvLm9yZz4sIHVz
aW5nIExpbmFybyByZWZlcmVuY2UgYm9hcmQgZnJvbSBIaWtleSA2NjIwOg0KPiBodHRwczovL2xp
c3RzLnRydXN0ZWRmaXJtd2FyZS5vcmcvYXJjaGl2ZXMvbGlzdC9vcC10ZWVAbGlzdHMudHJ1c3Rl
ZGZpcm13YXJlLm9yZy90aHJlYWQvSTNUWk40VEJET1VWRTU2N1ZNTU4yVEFYR1daTlk3UzMvDQo+
IEl0IGFsc28gd29ya3Mgb24gaS5NWDhNIEVWSyBib2FyZHMuDQo+IA0KPiBNeSB1bmRlcnN0YW5k
aW5nIHRvZGF5IGlzIHdlIGFyZSBnb29kIHRvIHVwc3RyZWFtIHRoaXMgcGF0Y2gsIGtub3dpbmc6
DQo+ICAgICAgLSBVcHN0cmVhbSBPUFRFRSBkcml2ZXIgc2hvdWxkIHN1cHBvcnQgcmVnaXN0ZXJp
bmcgYSBkbWFidWYgc2luY2UgYSB3aGlsZSwgZ2l2ZW4gaG93IHdpZGVseSBkbWFidWYgaXMgdXNl
ZCBpbiBMaW51eCBmb3IgcGFzc2luZyBidWZmZXJzIGFyb3VuZCBiZXR3ZWVuIGRldmljZXMuDQo+
ICAgICAgLSByZXZpZXcgaXMgT0sgDQo+ICAgICAgLSB0ZXN0IGVudmlyb25tZW50IGlzIGFscmVh
ZHkgYXZhaWxhYmxlIGluIG9wdGVlLXRlc3QNCj4gICAgICAtIGl0IGhhcyBiZWVuIHRlc3RlZCBv
biAyIGRpZmZlcmVudCBwbGF0Zm9ybXMNCj4gICAgICAtIHRoZSBzY29wZSBvZiB0aGUgbmV3IGlv
Y3RsIGlzIGxpbWl0ZWQgdG8gZXhpc3RpbmcgZmVhdHVyZSBpbiBkbWEtYnVmZmVyDQo+ICAgICAg
DQo+IFdoYXQgaXMgbWlzc2luZyBmcm9tIHRoaXMgbGlzdCBwcmV2ZW50aW5nIHRvIHVwc3RyZWFt
ID8gDQoNClBsZWFzZSBhZGRyZXNzIHRoZSBjb21tZW50cyBmcm9tIEV0aWVubmUgYW5kIHBvc3Qg
YSBuZXcgdmVyc2lvbiBvZiB0aGUNCnBhdGNoIGJhc2VkIG9uIHRoZSBsYXRlc3Qga2VybmVsLiBQ
bGVhc2UgdHJ5IHRvIGltcHJvdmUgdGhlIGxhbmd1YWdlIGluDQp0aGUgY29tbWl0IG1lc3NhZ2Uu
DQoNCklzIGl0IHBvc3NpYmxlIHRvIHVwZGF0ZSB0aGUgdGVzdHMgc28gdGhpcyBjYW4gYmUgdGVz
dGVkIG9uIFFFTVUgaW4gb3VyDQpDSSBsb29wPyBUaGF0IHNob3VsZCBoZWxwIHRvIGdldCB0aGUg
cmV2aWV3IHJlc3RhcnRlZC4NCg0KVGhhbmtzLA0KSmVucw0KDQo+IFdobyBkbyB3ZSBzdGlsbCBu
ZWVkIHRvIGNvbnZpbmNlID8NCj4gDQo+IFJlZ2FyZHMuDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBs
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
