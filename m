Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9/RRMFxwVmpT5gAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:22:36 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D44E7575CD
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:22:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=qualcomm.com header.s=qcppdkim1 header.b=XsySMgQX;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=qualcomm.com (policy=reject)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 84A1C40AA7
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 17:22:35 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lists.linaro.org (Postfix) with ESMTPS id F231D3F8F1
	for <linaro-mm-sig@lists.linaro.org>; Mon,  6 Jul 2026 11:41:11 +0000 (UTC)
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 666Ax6ni391044
	for <linaro-mm-sig@lists.linaro.org>; Mon, 6 Jul 2026 11:41:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JyWL2bmNSCp8kUWSmxLKw8OK4EFDlj3sVJl+0VzDp88=; b=XsySMgQXvfPgt0+a
	HXtcu1zM2rla/ZW5eTCxaMB6FICW13P1fwym0A/MsfBjDjqUGgXD1EHFUEySuOk2
	2z6rHOSeFOjg0Nyyc6VHixBwF+xqtTVaCt3ADnTB1IzhmU/aQqOPwenB2//RiLUm
	B+kOKlkYz6F03GNs7m211bs4Pr22Yuq9DZfFgJDYUjFMnF4mWSST9/zOrRBcEb9q
	n6vKECdJiMTwf5jgm2LcODgoUDnUe4767AbVeb1xNK1d92+uBCFBvMe85oFat7y7
	xZR2l3W1G+EwqCXOK7NjSKq0MIxTJb8OcGXxyUAjh0LR+gEqcXBvSvMPiveVOXbl
	yRJtqA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f89kgrhkw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Mon, 06 Jul 2026 11:41:10 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-51c27616421so11503811cf.2
        for <linaro-mm-sig@lists.linaro.org>; Mon, 06 Jul 2026 04:41:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783338070; x=1783942870; darn=lists.linaro.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=JyWL2bmNSCp8kUWSmxLKw8OK4EFDlj3sVJl+0VzDp88=;
        b=BHjKGI9ouWNluofZAGviUBk1/VeWlUMlkK9kqb482Ngx/+Tau0iaC/TnLoH8kFK21H
         wg/EhIZt/jQ6i3D0uKjCxz6ESUklZYVeG+8cix7QINMid3mSKXP1R+AvP1uMjNtsgkxx
         Qk2E4aU5XubB0kY5qEyZx6YqaYbrmZVVXPDGfOG7jhLDssXyeQum8EY8Ly8Xhh3M4/2o
         RU4K+rBUZsPIWne4dFeIEyOkNr1WsKa2L3d1nFLHJfmBDay3H+WhJBY1QGAaCVT8Q7x5
         dWguB3+nJWGeIO9lcfqtIlG0iLhxoXkVXiFKIRuWXHNKa++oukz00IqT6iUpT/rgf1ni
         T7Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783338070; x=1783942870;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=JyWL2bmNSCp8kUWSmxLKw8OK4EFDlj3sVJl+0VzDp88=;
        b=eps7OK3geA7Dz9VJfJs5cf4+S8fbQ7oqXaqNlB76QsQkomH9UY79clrezdH9hIYolP
         wASlWyM5JA3MQAotMjVeNRANCidqjwoGKASS3qfl9vPxzO5s/8502Nh0c1j6XuWoW5DX
         c4k8DFL/JV3+ghGOLhBZLF56OdbABVMQXCO9IC8pNfEBF/hJxWX0v34RhZundrxRXyEq
         40CGmLihM/SLqt/fAVpR0VYelMnvuCP4/WEoN22PrMZn++SVIX3R5WG0W3i42YkuGOpL
         Kvb224b7xgbykMm0ehdIsrwOpI8BEC9QnHeT0Jj7qQ/NSSLhy9YMeZ0Zeew+1apTcX31
         DRsw==
X-Forwarded-Encrypted: i=1; AHgh+RoyGXNWphQSSfAuSU14+Kwd2zfVPMJSl1CSAGyOE0X9/DHKsjpwc9AwQ3G1rrdEmI1jUNGYi/8hS64pEg2w@lists.linaro.org
X-Gm-Message-State: AOJu0YxO5Cie+EE6YykmqL8dmnVXreTzGuGNI75+dOf4xso4JfLsc8iI
	lwf0bJ0UU+LIj80aiobmgeD9UNKA1A5RsSg3nvg5egsKXNqaMWqbNZ6d3dfdGH/7QnslBDEt0rn
	pJF26yG/OTr+5Cy0lXGJHmscEuiVFZWlDGM0iOdxTdm1akaya21C9PHpaJIL3t6J72QfQuw==
X-Gm-Gg: AfdE7ckNJaFA6yw4+XOSMALXXpV2TOMSNP9mOp5gS8VbH9DIRy/vx0vYbP3Io8O07gW
	iGwyUBLF7FF1WCcmwzdJV8fkEw8QvN0GEPBSFArzUCBrHhZ8hKjA1/CSXqnDshsLYoVLI2DQztJ
	mx/KrcszjFQv2toUcP3bqY3kF2F7AQ7bYm0Jsr0KYCwVSpO3cyhT8vIK3HFgWMOW3ZvlhFanaGn
	dFUgudftCOKniJ6lx+A8742H/trsS0gnLF/67o74yiqPqwf51GWt2WnxB/BdF0HcDVXWgei2Utu
	CxyRy50VfL/1ESMiITOSvrsAiHKh7dbJNiKvGK+jx06LREIv0xUDTn0uqmjsikKUSHdN3IvmLr6
	jJoUAX4zQlsaEtOnBaLJc82zLfOFUH9Tiidk=
X-Received: by 2002:a05:622a:208:b0:50e:6311:7380 with SMTP id d75a77b69052e-51c4be99299mr82578301cf.6.1783338069791;
        Mon, 06 Jul 2026 04:41:09 -0700 (PDT)
X-Received: by 2002:a05:622a:208:b0:50e:6311:7380 with SMTP id d75a77b69052e-51c4be99299mr82578061cf.6.1783338069294;
        Mon, 06 Jul 2026 04:41:09 -0700 (PDT)
Received: from [192.168.120.193] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-69a19cf68f5sm4059006a12.13.2026.07.06.04.41.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jul 2026 04:41:08 -0700 (PDT)
Message-ID: <4f865aaf-a400-4dc6-acaa-80dc22a36af7@oss.qualcomm.com>
Date: Mon, 6 Jul 2026 13:41:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Aniket Randive <aniket.randive@oss.qualcomm.com>,
        mukesh.savaliya@oss.qualcomm.com, viken.dadhaniya@oss.qualcomm.com,
        andi.shyti@kernel.org, sumit.semwal@linaro.org,
        christian.koenig@amd.com
References: <20260705135739.4038826-1-aniket.randive@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260705135739.4038826-1-aniket.randive@oss.qualcomm.com>
X-Proofpoint-GUID: litOA22i254RwZXXwnQtEkyf6hoZBJ1B
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA2MDExOCBTYWx0ZWRfXxoPGTU43lXam
 pzsc+p9k55Nid0JM4vXZZKLrk7BoSutr+x8o0BSwNo5oFb/rXst3YepuElMg4ZfULu0abIKvn6G
 RslKhDedFLH9RLV5LCYtdC8RyuTOIgxMLANxDTBUeNIBvErhak3mwOtAYFIOLaru6l4gHglVhj/
 W2p+uAfZzPfjZZDbydZM1etJp+pYwMDpKbTal5Kcmljlx5IDR69F8tS2o0xvHWdtilfmsKJ3pvh
 y9WlbZfCCkq8wge08S2YgFprgGJm97IBiHwdoTGfLAPMhntOnZ7AR1SLEjM018ptOXlQjnWwiux
 F2dWMRI8H+7+zdTk2IOS7Uy/57wgRL1tO0NI08KyNwkj8zLcxA7O87aGPcBiwaMvDGJShdEO6mG
 ltumI0gFOYUZZy54YGBkgCfsHTgIYl+UXc1PoQ88Wp6vnYd1sRWCRvd24SjPR09gs4PE+WwxrHm
 zZT4k0go0MBoPymCZpQ==
X-Proofpoint-ORIG-GUID: litOA22i254RwZXXwnQtEkyf6hoZBJ1B
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA2MDExOCBTYWx0ZWRfXweuJY8FLN1Ip
 mxsNILOpEjuFC+lQC8504PrJ8tOEu0Bw6rvFzX8glHtndRxYNjJoorompO7Vj5HqjMZgewOfeEX
 tuxwBxqV3b31T6IojS2tPMCBzNEYp5k=
X-Authority-Analysis: v=2.4 cv=c6Sbhx9l c=1 sm=1 tr=0 ts=6a4b9456 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=QdFQMySKPoxOC9Zsaq0A:9 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-06_01,2026-07-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 clxscore=1011
 adultscore=0 priorityscore=1501 lowpriorityscore=0 spamscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2607060118
X-Spamd-Bar: ---
X-MailFrom: konrad.dybcio@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: GQIEEAUERDWWPTB34H5G6COIIEYHHFKM
X-Message-ID-Hash: GQIEEAUERDWWPTB34H5G6COIIEYHHFKM
X-Mailman-Approved-At: Tue, 14 Jul 2026 17:18:29 +0000
CC: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, naresh.maramaina@oss.qualcomm.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] i2c: qcom-geni: Add dynamic transfer timeout based on transfer length and frequency
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GQIEEAUERDWWPTB34H5G6COIIEYHHFKM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.49 / 15.00];
	DMARC_POLICY_REJECT(2.00)[qualcomm.com : SPF not aligned (relaxed),reject];
	DATE_IN_PAST(1.00)[197];
	R_DKIM_REJECT(1.00)[qualcomm.com:s=qcppdkim1];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aniket.randive@oss.qualcomm.com,m:mukesh.savaliya@oss.qualcomm.com,m:viken.dadhaniya@oss.qualcomm.com,m:andi.shyti@kernel.org,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:linux-i2c@vger.kernel.org,m:linux-arm-msm@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:naresh.maramaina@oss.qualcomm.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[konrad.dybcio@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[qualcomm.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,oss.qualcomm.com:from_mime,oss.qualcomm.com:mid,lists.linaro.org:from_smtp,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6D44E7575CD

On 7/5/26 3:57 PM, Aniket Randive wrote:
> The driver uses a static XFER_TIMEOUT of HZ (1 second) for all transfers
> regardless of message length or bus frequency, causing unnecessary
> delays on error paths.
> 
> Compute the timeout dynamically from message length and bus frequency
> with a 10x safety margin over the theoretical wire time and a 300ms
> floor. For GPI multi-descriptor transfers, use the maximum message
> length across all queued messages as the per-completion timeout.

What's the reason for a 0.3 s floor?

Why a 10x safety margin specifically?

[...]

> +static unsigned long geni_i2c_xfer_timeout(struct geni_i2c_dev *gi2c, size_t len)
> +{
> +	size_t bit_cnt = len * 9;
> +	size_t bit_usec = (bit_cnt * USEC_PER_SEC) / gi2c->clk_freq_out;

mult_frac()

Konrad
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
