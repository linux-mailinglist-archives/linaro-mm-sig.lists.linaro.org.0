Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id F2B186F55FD
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 May 2023 12:22:47 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1374A3F952
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 May 2023 10:22:47 +0000 (UTC)
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
	by lists.linaro.org (Postfix) with ESMTPS id DBC223EC7C
	for <linaro-mm-sig@lists.linaro.org>; Mon, 24 Apr 2023 18:14:58 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20221208 header.b=Zl71GsOy;
	spf=pass (lists.linaro.org: domain of justinpopo6@gmail.com designates 209.85.128.175 as permitted sender) smtp.mailfrom=justinpopo6@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-5529f3b8623so32696927b3.2
        for <linaro-mm-sig@lists.linaro.org>; Mon, 24 Apr 2023 11:14:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682360098; x=1684952098;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XzUuV71xlywRhSGB5NsLHjJvYQxnpMeaPTWJLwb1hAI=;
        b=Zl71GsOyhmESY9jYgO6iLjOhVx8eC/OnUROmISnQJgtnd6t8SrEAoeKB1skTRAJZ7P
         ePvZFuRfi6UFS1eNCGgh+Hz/lxanx2rGRxOtJL9j5NITb0843Fl1kquIpWw01tPtgXx8
         FlfRYVrDzoZliMPkOPnwOwle4WqWhGhTIURsnbulH82eplNycxUYgbu3Mrf1lE0dNEy6
         5gsGihJv8xkgNWQ3oJPxDRIyheeCqmlxFDMaAJlFoHMFD0/8Ib0feRBnSMVVTb6WPwdI
         uLKhW2KCuIwXlCTO49s8wPxc+339MnEDbvbBQ2viPW4gt23Y7oCrqAvWMJ3YyESJeeh7
         a1Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682360098; x=1684952098;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XzUuV71xlywRhSGB5NsLHjJvYQxnpMeaPTWJLwb1hAI=;
        b=kCn5nfvSLjikdlZH0WELZMnXbjEUvIlXAOpO+7TYodJxcl8mHNXvz3RyRXenFFwD3f
         LIzZro86CU9meyiqWZNbYoixBPgUXO8FegB6/Jf6OgCPBla/lTcMltx6rYjeH5+lui8I
         HaOFss94U9zslnvC+ynSQcRKQf6ssdqWNt0xGrZqK1Dsg2/e6qXXCL9LGiKM3zae1VPN
         OH0wzscpb9N2EVBxpNh+FSi1VvVnzuvpCR68RGlT2gKSB3geVAQ01KGC208VysI85z2/
         h0rMCzw8KQC6S1d71sIA3mYDVBrkd6AxCY6k9T8VfBObVnp5OvW3heRepr9hmV/OIF1u
         N1NQ==
X-Gm-Message-State: AAQBX9fWJUoOKGaXtDSGDOT52usk8Ip+Ua5xe7oz94VEvbFPJBd+Tfbs
	LZ2T2o2FtCuv5kymFaKmt3hOJ/tZ4ZJNH5BzOSk=
X-Google-Smtp-Source: AKy350apcZVtlQedv1SFzob/DDZM7LIKQflG72XIzIVjRiOTTQzsTPOrG6AamPjIXZAD9v+Aoargnxls9GL6gjVxnp4=
X-Received: by 2002:a81:5a05:0:b0:556:2699:f3cf with SMTP id
 o5-20020a815a05000000b005562699f3cfmr6537955ywb.40.1682360098243; Mon, 24 Apr
 2023 11:14:58 -0700 (PDT)
MIME-Version: 1.0
References: <1681863018-28006-1-git-send-email-justinpopo6@gmail.com>
 <1681863018-28006-2-git-send-email-justinpopo6@gmail.com> <e2069707-3f09-f1e7-6973-a2e115af7536@linaro.org>
In-Reply-To: <e2069707-3f09-f1e7-6973-a2e115af7536@linaro.org>
From: Justin Chen <justinpopo6@gmail.com>
Date: Mon, 24 Apr 2023 11:14:47 -0700
Message-ID: <CAJx26kXnYy9oQiXZ+dbAbzf-jAO9M6ggWL164_67MDS_3cfNnA@mail.gmail.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20221208];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-0.988];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,broadcom.com,gmail.com,davemloft.net,google.com,kernel.org,redhat.com,linaro.org,lunn.ch,armlinux.org.uk,amd.com];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	RCPT_COUNT_TWELVE(0.00)[23];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.175:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: DBC223EC7C
X-Spamd-Bar: --
X-MailFrom: justinpopo6@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: C3PY46OLR7CGU2YWPSGKPOXVQNT7NO3B
X-Message-ID-Hash: C3PY46OLR7CGU2YWPSGKPOXVQNT7NO3B
X-Mailman-Approved-At: Wed, 03 May 2023 10:17:46 +0000
CC: netdev@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, bcm-kernel-feedback-list@broadcom.com, justin.chen@broadcom.com, f.fainelli@gmail.com, davem@davemloft.net, edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, opendmb@gmail.com, andrew@lunn.ch, hkallweit1@gmail.com, linux@armlinux.org.uk, richardcochran@gmail.com, sumit.semwal@linaro.org, christian.koenig@amd.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH net-next 1/6] dt-bindings: net: Brcm ASP 2.0 Ethernet controller
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/C3PY46OLR7CGU2YWPSGKPOXVQNT7NO3B/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gRnJpLCBBcHIgMjEsIDIwMjMgYXQgMTI6MjnigK9BTSBLcnp5c3p0b2YgS296bG93c2tpDQo8
a3J6eXN6dG9mLmtvemxvd3NraUBsaW5hcm8ub3JnPiB3cm90ZToNCj4NCj4gT24gMTkvMDQvMjAy
MyAwMjoxMCwgSnVzdGluIENoZW4gd3JvdGU6DQo+ID4gRnJvbTogRmxvcmlhbiBGYWluZWxsaSA8
Zi5mYWluZWxsaUBnbWFpbC5jb20+DQo+ID4NCj4gPiBBZGQgYSBiaW5kaW5nIGRvY3VtZW50IGZv
ciB0aGUgQnJvYWRjb20gQVNQIDIuMCBFdGhlcm5ldA0KPiA+IGNvbnRyb2xsZXIuDQo+ID4NCj4g
PiBTaWduZWQtb2ZmLWJ5OiBGbG9yaWFuIEZhaW5lbGxpIDxmLmZhaW5lbGxpQGdtYWlsLmNvbT4N
Cj4gPiBTaWduZWQtb2ZmLWJ5OiBKdXN0aW4gQ2hlbiA8anVzdGlucG9wbzZAZ21haWwuY29tPg0K
PiA+IC0tLQ0KPiA+ICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvYnJjbSxhc3AtdjIuMC55
YW1sICAgICB8IDE0NiArKysrKysrKysrKysrKysrKysrKysNCj4gPiAgMSBmaWxlIGNoYW5nZWQs
IDE0NiBpbnNlcnRpb25zKCspDQo+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvbmV0L2JyY20sYXNwLXYyLjAueWFtbA0KPiA+DQo+ID4gZGlm
ZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvYnJjbSxhc3At
djIuMC55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9icmNtLGFz
cC12Mi4wLnlhbWwNCj4gPiBuZXcgZmlsZSBtb2RlIDEwMDY0NA0KPiA+IGluZGV4IDAwMDAwMDAw
MDAwMC4uMzgxN2Q3MjIyNDRmDQo+ID4gLS0tIC9kZXYvbnVsbA0KPiA+ICsrKyBiL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvYnJjbSxhc3AtdjIuMC55YW1sDQo+ID4gQEAg
LTAsMCArMSwxNDYgQEANCj4gPiArIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjAt
b25seSBPUiBCU0QtMi1DbGF1c2UpDQo+ID4gKyVZQU1MIDEuMg0KPiA+ICstLS0NCj4gPiArJGlk
OiAiaHR0cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMvbmV0L2JyY20sYXNwLXYyLjAueWFtbCMi
DQo+ID4gKyRzY2hlbWE6ICJodHRwOi8vZGV2aWNldHJlZS5vcmcvbWV0YS1zY2hlbWFzL2NvcmUu
eWFtbCMiDQo+DQo+IERyb3AgcXVvdGVzLg0KPg0KPiA+ICsNCj4gPiArdGl0bGU6IEJyb2FkY29t
IEFTUCAyLjAgRXRoZXJuZXQgY29udHJvbGxlcg0KPiA+ICsNCj4gPiArbWFpbnRhaW5lcnM6DQo+
ID4gKyAgLSBKdXN0aW4gQ2hlbiA8anVzdGlucG9wbzZAZ21haWwuY29tPg0KPiA+ICsgIC0gRmxv
cmlhbiBGYWluZWxsaSA8Zi5mYWluZWxsaUBnbWFpbC5jb20+DQo+ID4gKw0KPiA+ICtkZXNjcmlw
dGlvbjogQnJvYWRjb20gRXRoZXJuZXQgY29udHJvbGxlciBmaXJzdCBpbnRyb2R1Y2VkIHdpdGgg
NzIxNjUNCj4gPiArDQo+ID4gK3Byb3BlcnRpZXM6DQo+ID4gKyAgJyNhZGRyZXNzLWNlbGxzJzoN
Cj4gPiArICAgIGNvbnN0OiAxDQo+ID4gKyAgJyNzaXplLWNlbGxzJzoNCj4gPiArICAgIGNvbnN0
OiAxDQo+ID4gKw0KPiA+ICsgIGNvbXBhdGlibGU6DQo+ID4gKyAgICBlbnVtOg0KPiA+ICsgICAg
ICAtIGJyY20sYmNtNzIxNjUtYXNwLXYyLjANCj4gPiArICAgICAgLSBicmNtLGFzcC12Mi4wDQo+
ID4gKyAgICAgIC0gYnJjbSxhc3AtdjIuMQ0KPg0KPiBJcyB0aGlzIHBhcnQgb2YgU29DPyBJZiBz
bywgdGhlbiBTb0MgY29tcGF0aWJsZXMgYXJlIHByZWZlcnJlZCwgbm90IElQDQo+IGJsb2NrIHZl
cnNpb25zLg0KV2UgaGF2ZSB0aGUgc2FtZSBJUCBvbiBkaWZmZXJlbnQgY2hpcHMuIFNvIG5vLCBp
dCBpc24ndCB0aWVkIHRvIGEgc3BlY2lmaWMgU29DLg0KDQo+DQo+ID4gKw0KPiA+ICsgIHJlZzoN
Cj4gPiArICAgIG1heEl0ZW1zOiAxDQo+ID4gKyAgICBkZXNjcmlwdGlvbjogQVNQIHJlZ2lzdGVy
cw0KPg0KPiBEcm9wIGRlc2NyaXB0aW9uLg0KPg0KPiA+ICsNCj4gPiArICByYW5nZXM6IHRydWUN
Cj4gPiArDQo+ID4gKyAgaW50ZXJydXB0czoNCj4gPiArICAgIG1pbkl0ZW1zOiAxDQo+ID4gKyAg
ICBpdGVtczoNCj4gPiArICAgICAgLSBkZXNjcmlwdGlvbjogUlgvVFggaW50ZXJydXB0DQo+ID4g
KyAgICAgIC0gZGVzY3JpcHRpb246IFBvcnQgMCBXYWtlLW9uLUxBTg0KPiA+ICsgICAgICAtIGRl
c2NyaXB0aW9uOiBQb3J0IDEgV2FrZS1vbi1MQU4NCj4gPiArDQo+ID4gKyAgY2xvY2tzOg0KPiA+
ICsgICAgJHJlZjogL3NjaGVtYXMvdHlwZXMueWFtbCMvZGVmaW5pdGlvbnMvcGhhbmRsZS1hcnJh
eQ0KPg0KPiBEcm9wLg0KPg0KPiA+ICsgICAgZGVzY3JpcHRpb246IFBoYW5kbGUgdG8gY2xvY2sg
Y29udHJvbGxlcg0KPg0KPiBEcm9wLg0KPg0KPiBJbnN0ZWFkIG1heEl0ZW1zLg0KPg0KPiA+ICsN
Cj4gPiArICBjbG9jay1uYW1lczoNCj4gPiArICAgIGNvbnN0OiBzd19hc3ANCj4NCj4gRHJvcCBl
bnRpcmUgcHJvcGVydHkuDQo+DQo+ID4gKw0KPiA+ICsgIGV0aGVybmV0LXBvcnRzOg0KPiA+ICsg
ICAgdHlwZTogb2JqZWN0DQo+ID4gKyAgICBwcm9wZXJ0aWVzOg0KPiA+ICsgICAgICAnI2FkZHJl
c3MtY2VsbHMnOg0KPiA+ICsgICAgICAgIGNvbnN0OiAxDQo+ID4gKyAgICAgICcjc2l6ZS1jZWxs
cyc6DQo+ID4gKyAgICAgICAgY29uc3Q6IDANCj4NCj4gTWlzc2luZyBhZGRpdGlvbmFsUHJvcGVy
dGllczpmYWxzZS4gTG9vayBhdCBleGlzdGluZyBiaW5kaW5ncyBob3cgaXQgaXMNCj4gZG9uZS4N
Cj4NCj4gPiArDQo+ID4gKyAgICBwYXR0ZXJuUHJvcGVydGllczoNCj4gPiArICAgICAgIl5wb3J0
QFswLTldKyQiOg0KPiA+ICsgICAgICAgIHR5cGU6IG9iamVjdA0KPiA+ICsNCj4gPiArICAgICAg
ICAkcmVmOiBldGhlcm5ldC1jb250cm9sbGVyLnlhbWwjDQo+ID4gKw0KPiA+ICsgICAgICAgIHBy
b3BlcnRpZXM6DQo+ID4gKyAgICAgICAgICByZWc6DQo+ID4gKyAgICAgICAgICAgIG1heEl0ZW1z
OiAxDQo+ID4gKyAgICAgICAgICAgIGRlc2NyaXB0aW9uOiBQb3J0IG51bWJlcg0KPiA+ICsNCj4g
PiArICAgICAgICAgIGNoYW5uZWw6DQo+ID4gKyAgICAgICAgICAgIG1heEl0ZW1zOiAxDQo+ID4g
KyAgICAgICAgICAgIGRlc2NyaXB0aW9uOiBBU1AgY2hhbm5lbCBudW1iZXINCj4gPiArDQo+ID4g
KyAgICAgICAgcmVxdWlyZWQ6DQo+ID4gKyAgICAgICAgICAtIHJlZw0KPiA+ICsgICAgICAgICAg
LSBjaGFubmVsDQo+ID4gKw0KPiA+ICtwYXR0ZXJuUHJvcGVydGllczoNCj4gPiArICAiXm1kaW9A
WzAtOWEtZl0rJCI6DQo+ID4gKyAgICB0eXBlOiBvYmplY3QNCj4gPiArICAgICRyZWY6ICJicmNt
LHVuaW1hYy1tZGlvLnlhbWwiDQo+ID4gKw0KPiA+ICsgICAgZGVzY3JpcHRpb246DQo+ID4gKyAg
ICAgIEFTUCBpbnRlcm5hbCBVbmlNQUMgTURJTyBidXMNCj4gPiArDQo+ID4gK3JlcXVpcmVkOg0K
PiA+ICsgIC0gY29tcGF0aWJsZQ0KPiA+ICsgIC0gcmVnDQo+ID4gKyAgLSBpbnRlcnJ1cHRzDQo+
ID4gKyAgLSBjbG9ja3MNCj4gPiArICAtIGNsb2NrLW5hbWVzDQo+ID4gKyAgLSByYW5nZXMNCj4g
PiArDQo+ID4gK2FkZGl0aW9uYWxQcm9wZXJ0aWVzOiBmYWxzZQ0KPiA+ICsNCj4gPiArZXhhbXBs
ZXM6DQo+ID4gKyAgLSB8DQo+ID4gKyAgICBhc3BAOWMwMDAwMCB7DQo+DQo+IE5vZGUgbmFtZXMg
c2hvdWxkIGJlIGdlbmVyaWMuDQo+IGh0dHBzOi8vZGV2aWNldHJlZS1zcGVjaWZpY2F0aW9uLnJl
YWR0aGVkb2NzLmlvL2VuL2xhdGVzdC9jaGFwdGVyMi1kZXZpY2V0cmVlLWJhc2ljcy5odG1sI2dl
bmVyaWMtbmFtZXMtcmVjb21tZW5kYXRpb24NCj4NCj4gPiArICAgICAgICBjb21wYXRpYmxlID0g
ImJyY20sYXNwLXYyLjAiOw0KPiA+ICsgICAgICAgIHJlZyA9IDwweDljMDAwMDAgMHgxZmZmMTQ+
Ow0KPiA+ICsgICAgICAgIGludGVycnVwdHMgPSA8MHgwIDB4MzMgMHg0PjsNCj4NCj4gVXNlIHBy
b3BlciBkZWZpbmVzIGZvciBmbGFncy4NCk5vdCB1bmRlcnN0YW5kaW5nIHRoaXMgY29tbWVudC4g
Q2FuIHlvdSBlbGFib3JhdGU/DQoNClRoYW5rcywNCkp1c3Rpbg0KPg0KPiA+ICsgICAgICAgIHJh
bmdlczsNCj4gPiArICAgICAgICBjbG9ja3MgPSA8JnNjbWkgMTQ+Ow0KPiA+ICsgICAgICAgIGNs
b2NrLW5hbWVzID0gInN3X2FzcCI7DQo+ID4gKyAgICAgICAgI2FkZHJlc3MtY2VsbHMgPSA8MT47
DQo+ID4gKyAgICAgICAgI3NpemUtY2VsbHMgPSA8MT47DQo+DQo+DQo+IEJlc3QgcmVnYXJkcywN
Cj4gS3J6eXN6dG9mDQo+DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2ln
LWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
