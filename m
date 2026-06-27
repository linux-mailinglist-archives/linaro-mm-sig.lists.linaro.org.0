Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jll7G1RuVmqN5QAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:13:56 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 00E177573CD
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:13:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=none
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1D66A40A1A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 17:13:55 +0000 (UTC)
Received: from cstnet.cn (smtp81.cstnet.cn [159.226.251.81])
	by lists.linaro.org (Postfix) with ESMTPS id A0AFC3F99D
	for <linaro-mm-sig@lists.linaro.org>; Sat, 27 Jun 2026 12:34:37 +0000 (UTC)
Received: from smtpclient.apple (unknown [117.182.75.66])
	by APP-03 (Coremail) with SMTP id rQCowABHK+JXwz9qThsNFg--.5447S2;
	Sat, 27 Jun 2026 20:34:32 +0800 (CST)
From: WenTao Liang <vulab@iscas.ac.cn>
Message-Id: <36056DF1-643E-4AAA-B1C6-DBFAEA831DEB@iscas.ac.cn>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.700.81.1.8\))
Date: Sat, 27 Jun 2026 20:34:21 +0800
In-Reply-To: <5180c887-c879-440f-a58b-1cad96b7abb1@amd.com>
To: =?utf-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
References: <20260626122836.35856-1-vulab@iscas.ac.cn>
 <5180c887-c879-440f-a58b-1cad96b7abb1@amd.com>
X-Mailer: Apple Mail (2.3826.700.81.1.8)
X-CM-TRANSID: rQCowABHK+JXwz9qThsNFg--.5447S2
X-Coremail-Antispam: 1UD129KBjvdXoWrCFy3urW5Cr47Zw1xArWfAFb_yoWxWFX_WF
	WvyrW2qa1rCFsxJa1ayFnaqrZxX3ykXa43Ww10gr45t34ft3yDAFZ8K3Z3urW3ZF4IqryD
	KFn7G392kryS9jkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUIcSsGvfJTRUUUb28YjsxI4VW3JwAYFVCjjxCrM7AC8VAFwI0_Gr0_Xr1l1xkIjI8I
	6I8E6xAIw20EY4v20xvaj40_Wr0E3s1l1IIY67AEw4v_Jr0_Jr4l8cAvFVAK0II2c7xJM2
	8CjxkF64kEwVA0rcxSw2x7M28EF7xvwVC0I7IYx2IY67AKxVW8JVW5JwA2z4x0Y4vE2Ix0
	cI8IcVCY1x0267AKxVW8JVWxJwA2z4x0Y4vEx4A2jsIE14v26rxl6s0DM28EF7xvwVC2z2
	80aVCY1x0267AKxVW0oVCq3wAS0I0E0xvYzxvE52x082IY62kv0487McIj6xIIjxv20xvE
	14v26r106r15McIj6I8E87Iv67AKxVW8JVWxJwAm72CE4IkC6x0Yz7v_Jr0_Gr1lF7xvr2
	IYc2Ij64vIr41l7480Y4vEI4kI2Ix0rVAqx4xJMxkF7I0En4kS14v26r126r1DMxAIw28I
	cxkI7VAKI48JMxC20s026xCaFVCjc4AY6r1j6r4UMI8I3I0E5I8CrVAFwI0_JrI_JrWlx2
	IqxVCjr7xvwVAFwI0_JrI_JrWlx4CE17CEb7AF67AKxVWUAVWUtwCIc40Y0x0EwIxGrwCI
	42IY6xIIjxv20xvE14v26r1j6r1xMIIF0xvE2Ix0cI8IcVCY1x0267AKxVW8JVWxJwCI42
	IY6xAIw20EY4v20xvaj40_Jr0_JF4lIxAIcVC2z280aVAFwI0_Gr0_Cr1lIxAIcVC2z280
	aVCY1x0267AKxVW8Jr0_Cr1UYxBIdaVFxhVjvjDU0xZFpf9x07j8gAwUUUUU=
X-Originating-IP: [117.182.75.66]
X-CM-SenderInfo: pyxotu46lvutnvoduhdfq/1tbiBwULA2o-mHtVEwAAs6
X-Spamd-Bar: --
X-MailFrom: vulab@iscas.ac.cn
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 47EBDJZRVZRQDBHWDCME4HWWMOYU5NA3
X-Message-ID-Hash: 47EBDJZRVZRQDBHWDCME4HWWMOYU5NA3
X-Mailman-Approved-At: Tue, 14 Jul 2026 17:13:21 +0000
CC: sumit.semwal@linaro.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] fix: dma-buf: unwrap_merge_complex: dma_fence_get_stub reference leaked on all paths
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/47EBDJZRVZRQDBHWDCME4HWWMOYU5NA3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============3482078676357431440=="
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.99 / 15.00];
	DATE_IN_PAST(1.00)[412];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[iscas.ac.cn];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:christian.koenig@amd.com,m:sumit.semwal@linaro.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	TO_DN_SOME(0.00)[];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	FORGED_SENDER(0.00)[vulab@iscas.ac.cn,linaro-mm-sig-bounces@lists.linaro.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_XOIP(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vulab@iscas.ac.cn,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[iscas.ac.cn:from_mime,iscas.ac.cn:mid,linaro.org:email,amd.com:email,lists.linaro.org:from_smtp,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 00E177573CD


--===============3482078676357431440==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_B546F79C-AA21-4722-B312-6497B4DDC2E9"


--Apple-Mail=_B546F79C-AA21-4722-B312-6497B4DDC2E9
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8



> 2026=E5=B9=B46=E6=9C=8826=E6=97=A5 20:47=EF=BC=8CChristian K=C3=B6nig =
<christian.koenig@amd.com> =E5=86=99=E9=81=93=EF=BC=9A
>=20
> Just drop that, the stub fence is a global dummy and leaking reference =
to it is harmless.
>=20
> But just in case somebody uses this code as blueprint for this own =
implementation we should probably clean it up.


Thanks for the review. I understand that the leak is harmless in
practice.

However, I think it's still worth cleaning up to avoid misleading
other developers who might reference this code as an example. I'd
prefer to keep this patch for the sake of code quality and
maintainability.

Please let me know if you have any objections.

Best regards,
WenTao Liang=

--Apple-Mail=_B546F79C-AA21-4722-B312-6497B4DDC2E9
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"overflow-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;"><br =
id=3D"lineBreakAtBeginningOfMessage"><div><br><blockquote =
type=3D"cite"><div>2026=E5=B9=B46=E6=9C=8826=E6=97=A5 20:47=EF=BC=8CChrist=
ian K=C3=B6nig &lt;christian.koenig@amd.com&gt; =E5=86=99=E9=81=93=EF=BC=9A=
</div><br class=3D"Apple-interchange-newline"><div><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;">Just drop that, the stub fence is a global =
dummy and leaking reference to it is harmless.</span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;"><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;"><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;">But just in case somebody uses this code as =
blueprint for this own implementation we should probably clean it =
up.</span></div></blockquote></div><br><div><div><br></div><div>Thanks =
for the review. I understand that the leak is harmless =
in</div><div>practice.</div><div><br></div><div>However, I think it's =
still worth cleaning up to avoid misleading</div><div>other developers =
who might reference this code as an example. I'd</div><div>prefer to =
keep this patch for the sake of code quality =
and</div><div>maintainability.</div><div><br></div><div>Please let me =
know if you have any objections.</div><div><br></div><div>Best =
regards,</div><div>WenTao Liang</div></div></body></html>=

--Apple-Mail=_B546F79C-AA21-4722-B312-6497B4DDC2E9--


--===============3482078676357431440==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============3482078676357431440==--

