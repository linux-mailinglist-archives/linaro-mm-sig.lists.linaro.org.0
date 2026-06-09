Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9oeTDXm+J2rE1QIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 09 Jun 2026 09:19:21 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id AC6B665D1F3
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 09 Jun 2026 09:19:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=hidingmail.net (policy=reject);
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org"
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8EBD240A38
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  9 Jun 2026 07:19:19 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9BB423F7BD
	for <linaro-mm-sig@lists.linaro.org>; Tue,  9 Jun 2026 07:19:12 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
From: many.unicorn.syms@hidingmail.net
To: linaro-mm-sig@lists.linaro.org
Date: Tue, 09 Jun 2026 07:19:12 -0000
Message-ID: <178098955263.875322.14889334181769088457@lists.linaro.org>
User-Agent: HyperKitty on http://lists-ec2.96boards.org/
Message-ID-Hash: BLT6YY6EMEX4HVS7OTYFAMIMWQC5C3VT
X-Message-ID-Hash: BLT6YY6EMEX4HVS7OTYFAMIMWQC5C3VT
X-MailFrom: many.unicorn.syms@hidingmail.net
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Unlocking the Melody: A Guide to Heardle
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BLT6YY6EMEX4HVS7OTYFAMIMWQC5C3VT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64
X-Rspamd-Action: add header
X-Spamd-Result: default: False [12.89 / 15.00];
	SPAM_FLAG(5.00)[];
	ABUSE_SURBL(5.00)[hidingmail.net:from_mime];
	DMARC_POLICY_REJECT(2.00)[hidingmail.net : SPF not aligned (relaxed), No valid DKIM,reject];
	MID_RHS_MATCH_TO(1.00)[];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	BAD_REP_POLICIES(0.10)[];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	FORGED_RECIPIENTS(0.00)[m:linaro-mm-sig@lists.linaro.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[many.unicorn.syms@hidingmail.net,linaro-mm-sig-bounces@lists.linaro.org];
	GREYLIST(0.00)[pass,meta];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FORGED_SENDER_MAILLIST(0.00)[];
	R_DKIM_NA(0.00)[];
	R_SPF_ALLOW(0.00)[+mx];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FROM_NEQ_ENVFROM(0.00)[many.unicorn.syms@hidingmail.net,linaro-mm-sig-bounces@lists.linaro.org]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AC6B665D1F3
X-Spam: Yes

RXZlciBmb3VuZCB5b3Vyc2VsZiBodW1taW5nIGFsb25nIHRvIGEgdHVuZSwgb25seSB0byByZWFs
aXplIHlvdSBjYW7igJl0IHF1aXRlIHBsYWNlIHRoZSBhcnRpc3Qgb3IgdGl0bGU/IElmIHNvLCB5
b3XigJlyZSBpbiBmb3IgYSB0cmVhdCB3aXRoIEhlYXJkbGUuIFRoaXMgZGVsaWdodGZ1bCBvbmxp
bmUgZ2FtZSBvZmZlcnMgYSBkYWlseSBkb3NlIG9mIG11c2ljYWwgdHJpdmlhLCBjaGFsbGVuZ2lu
ZyB5b3VyIGVhciBhbmQgbWVtb3J5IGluIGEgc3VycHJpc2luZ2x5IGFkZGljdGl2ZSB3YXkuIFdo
ZXRoZXIgeW91J3JlIGEgc2Vhc29uZWQgbXVzaWMgYWZpY2lvbmFkbyBvciBqdXN0IGxvb2tpbmcg
Zm9yIGEgZnVuIGJyYWluLXRlYXNlciwgSGVhcmRsZSBwcm92aWRlcyBhbiBlbmdhZ2luZyBleHBl
cmllbmNlLg0KDQpodHRwczovL2hlYXJkbGVmcmVlLmNvbS8NCg0KV2hhdCBpcyBIZWFyZGxlPw0K
DQpBdCBpdHMgY29yZSwgSGVhcmRsZSBpcyBhIGRhaWx5IG11c2ljYWwgZ3Vlc3NpbmcgZ2FtZS4g
RWFjaCBkYXksIGEgbmV3IHNvbmcgaXMgcHJlc2VudGVkLCBhbmQgeW91ciB0YXNrIGlzIHRvIGlk
ZW50aWZ5IGl0IGJhc2VkIG9uIHNob3J0IGF1ZGlvIHNuaXBwZXRzLiBUaGUgYmVhdXR5IG9mIEhl
YXJkbGUgbGllcyBpbiBpdHMgcHJvZ3Jlc3NpdmUgZGlmZmljdWx0eS4gWW91IHN0YXJ0IHdpdGgg
anVzdCBhIHNlY29uZCBvZiB0aGUgaW50cm8sIGFuZCBpZiB5b3XigJlyZSBzdHVtcGVkLCB5b3Ug
Y2FuIGdldCBtb3JlIHRpbWUsIHVwIHRvIGEgbWF4aW11bSBvZiAxNiBzZWNvbmRzLiBJdCdzIGEg
ZmFudGFzdGljIHdheSB0byBkaXNjb3ZlciBuZXcgbXVzaWMgb3IgcmVjb25uZWN0IHdpdGggb2xk
IGZhdm9yaXRlcy4gWW91IGNhbiBleHBlcmllbmNlIHRoZSBnYW1lIGFuZCB0cnkgeW91ciBoYW5k
IGF0IGd1ZXNzaW5nIHRoZSBkYWlseSBzb25nIGJ5IHZpc2l0aW5nIEhlYXJkbGUuDQoNCkdhbWVw
bGF5OiBZb3VyIERhaWx5IE11c2ljYWwgQ2hhbGxlbmdlDQoNClBsYXlpbmcgSGVhcmRsZSBpcyBz
dHJhaWdodGZvcndhcmQgYW5kIGludHVpdGl2ZS4gV2hlbiB5b3UgZmlyc3Qgb3BlbiB0aGUgZ2Ft
ZSwgeW91J2xsIHNlZSBhIHNpbXBsZSBpbnRlcmZhY2Ugd2l0aCBhIHBsYXkgYnV0dG9uIGFuZCBh
IHNlYXJjaCBiYXIuDQoNCkxpc3RlbiB0byB0aGUgU25pcHBldDrCoENsaWNrIHRoZSBwbGF5IGJ1
dHRvbiB0byBoZWFyIHRoZSBpbml0aWFsIG9uZS1zZWNvbmQgc25pcHBldCBvZiB0aGUgc29uZy4N
Ck1ha2UgWW91ciBHdWVzcyAob3IgU2tpcCk6wqBCYXNlZCBvbiB0aGlzIHRpbnkgZnJhZ21lbnQs
IHlvdSBjYW4gZWl0aGVyIHR5cGUgeW91ciBndWVzcyBpbnRvIHRoZSBzZWFyY2ggYmFyLiBBcyB5
b3UgdHlwZSwgdGhlIGdhbWUgd2lsbCBzdWdnZXN0IHBvdGVudGlhbCBzb25nIHRpdGxlcyBhbmQg
YXJ0aXN0cy4gSWYgeW91IGhhdmUgbm8gaWRlYSwgb3Igd2FudCBtb3JlIHRpbWUsIHlvdSBjYW4g
Y2xpY2sgIlNraXAiIHRvIGhlYXIgYSBsb25nZXIgc2VnbWVudC4NClByb2dyZXNzaXZlIFJldmVh
bHM6wqBFYWNoIHRpbWUgeW91IHNraXAsIHRoZSBhdWRpbyBzbmlwcGV0IGdldHMgc2xpZ2h0bHkg
bG9uZ2VyLCBnaXZpbmcgeW91IG1vcmUgbXVzaWNhbCBjbHVlcy4gWW91IGhhdmUgYSB0b3RhbCBv
ZiBzaXggYXR0ZW1wdHMuDQpUaGUgUmV2ZWFsOsKgSWYgeW91IGd1ZXNzIGNvcnJlY3RseSwgb3Ig
aWYgeW91IGV4aGF1c3QgYWxsIHlvdXIgYXR0ZW1wdHMsIHRoZSBzb25nJ3MgdGl0bGUgYW5kIGFy
dGlzdCBhcmUgcmV2ZWFsZWQuIFlvdSdsbCBhbHNvIHNlZSB5b3VyIHNjb3JlIChob3cgbWFueSBh
dHRlbXB0cyBpdCB0b29rIHlvdSkgYW5kIGhhdmUgdGhlIG9wdGlvbiB0byBzaGFyZSB5b3VyIHJl
c3VsdC4NClRpcHMgZm9yIE1hc3RlcmluZyBIZWFyZGxlDQoNCldoaWxlIGx1Y2sgcGxheXMgYSBz
bWFsbCBwYXJ0LCB0aGVyZSBhcmUgc3RyYXRlZ2llcyB0byBpbXByb3ZlIHlvdXIgSGVhcmRsZSBz
dWNjZXNzIHJhdGU6DQoNCkZvY3VzIG9uIEludHJvczrCoE1hbnkgc29uZ3MgaGF2ZSB2ZXJ5IGRp
c3RpbmN0aXZlIGludHJvZHVjdGlvbnMuIFBheSBjbG9zZSBhdHRlbnRpb24gdG8gdW5pcXVlIGlu
c3RydW1lbnRhbHMsIHZvY2FsIGhvb2tzLCBvciBwcm9kdWN0aW9uIHN0eWxlcyBpbiB0aGUgaW5p
dGlhbCBzZWNvbmRzLg0KR2VucmUgQXdhcmVuZXNzOsKgSWYgeW91IGhhdmUgYSBnZW5lcmFsIGlk
ZWEgb2YgdGhlIGVyYSBvciBnZW5yZSwgaXQgY2FuIHNpZ25pZmljYW50bHkgbmFycm93IGRvd24g
eW91ciBzZWFyY2guIFNvbWV0aW1lcyBqdXN0IGtub3dpbmcgaXQncyBhIDkwcyBwb3Agc29uZyBv
ciBhIGNsYXNzaWMgcm9jayBhbnRoZW0gaXMgZW5vdWdoIHRvIHRyaWdnZXIgYSBtZW1vcnkuDQpE
b24ndCBCZSBBZnJhaWQgdG8gU2tpcDrCoFRoZXJlJ3Mgbm8gcGVuYWx0eSBmb3Igc2tpcHBpbmch
IElmIHRoZSBmaXJzdCBzZWNvbmQgZG9lc24ndCByaW5nIGEgYmVsbCwgZG9uJ3Qgd2FzdGUgdGlt
ZSBwb25kZXJpbmcuIEdldCB0aG9zZSBleHRyYSBzZWNvbmRzIG9mIGF1ZGlvLg0KSHVtIEl0IE91
dDrCoFNvbWV0aW1lcywgaHVtbWluZyB0aGUgdHVuZSBpbiB5b3VyIGhlYWQgY2FuIGhlbHAgeW91
IGNvbm5lY3QgaXQgdG8gbHlyaWNzIG9yIGEgdGl0bGUgeW91IGtub3cuDQpMaXN0ZW4gQWN0aXZl
bHk6wqBJbnN0ZWFkIG9mIGp1c3QgaGVhcmluZywgYWN0aXZlbHkgbGlzdGVuIGZvciBzcGVjaWZp
YyBpbnN0cnVtZW50cywgdm9jYWwgaW5mbGVjdGlvbnMsIG9yIHJoeXRobWljIHBhdHRlcm5zLg0K
RXhwbG9yZSBQYXN0IEhlYXJkbGVzOsKgV2hpbGUgbm90IGRpcmVjdGx5IGhlbHBpbmcgd2l0aCB0
aGUgY3VycmVudCBkYXkncyBzb25nLCByZXZpc2l0aW5nIHBhc3QgSGVhcmRsZSBwdXp6bGVzIGNh
biBoZWxwIHlvdSB0cmFpbiB5b3VyIGVhciBhbmQgcmVjb2duaXplIGNvbW1vbiBzb25nIHN0cnVj
dHVyZXMuIFlvdSBjYW4gb2Z0ZW4gZmluZCBhcmNoaXZlcyBvZiBwYXN0IGdhbWVzIG9uIHNpdGVz
IGxpa2UgSGVhcmRsZS4NCg0KQ29uY2x1c2lvbg0KDQpIZWFyZGxlIG9mZmVycyBhIGRlbGlnaHRm
dWwgYW5kIGFjY2Vzc2libGUgd2F5IHRvIGVuZ2FnZSB3aXRoIG11c2ljLiBJdCdzIGEgcGVyZmVj
dCBicmllZiBlc2NhcGUgZm9yIHlvdXIgY29mZmVlIGJyZWFrLCBhIGZ1biBjaGFsbGVuZ2UgdG8g
c2hhcmUgd2l0aCBmcmllbmRzLCBvciBzaW1wbHkgYSB3YXkgdG8gdGVzdCB5b3VyIG11c2ljYWwg
a25vd2xlZGdlLiBHaXZlIGl0IGEgdHJ5LCBhbmQgeW91IG1pZ2h0IGp1c3Qgc3VycHJpc2UgeW91
cnNlbGYgd2l0aCBob3cgbWFueSBtZWxvZGllcyB5b3UgcmVjb2duaXplIOKAkyBhbmQgcGVyaGFw
cyBkaXNjb3ZlciBhIG5ldyBmYXZvcml0ZSBhbG9uZyB0aGUgd2F5IQ0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQg
YW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
