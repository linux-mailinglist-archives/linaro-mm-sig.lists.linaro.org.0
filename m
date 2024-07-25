Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 614D293BB66
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jul 2024 06:09:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EDD7F42540
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jul 2024 04:09:50 +0000 (UTC)
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	by lists.linaro.org (Postfix) with ESMTPS id 47E8142540
	for <linaro-mm-sig@lists.linaro.org>; Thu, 25 Jul 2024 04:09:34 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=jZ012AFX;
	spf=pass (lists.linaro.org: domain of dmitry.baryshkov@linaro.org designates 209.85.208.181 as permitted sender) smtp.mailfrom=dmitry.baryshkov@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2ef7fef3ccfso5420321fa.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 24 Jul 2024 21:09:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721880573; x=1722485373; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=2aLaJYQrt2Mrpa6ixTAmSx6t43lvxNvXrJytjXn2tsc=;
        b=jZ012AFXF9sc2shbvc3pfdtMesoY4uOHcNwI2y1+cbUwll/1fhCJShEJh9giuiF1Ia
         he1IDS4UWeS37JcTelY/iKngjEM9LdA6upjVQ3ARAWsTytpaPUnSFR7CzjcARoaSEKBu
         DaHkoo+cPMEep5Tfsu5NWEEpkQp/ZpL30SGuHwMW7WyiDMp+xM3JtLiCrFVez6mks1xP
         3MdmRyAhsQw1kVnmhZQDcA2zAXBk9N3VFPFLV72ZhXMLKYCQuqG+dAV5n5e5BPXSdZyD
         jtSPRPt25U2alpmjSEJtCKlrt/MlAK8vqbkgnI/6y1SMdqRLfKx+iX/8FiRP4UNKrCv1
         wfqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721880573; x=1722485373;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2aLaJYQrt2Mrpa6ixTAmSx6t43lvxNvXrJytjXn2tsc=;
        b=n8KI/JNfiFNKJ9jGZa9RXt/qHWio4rhyh/xJqGFj0SADDkTzzH5tD/ywVCx5xVNK2e
         WHzEncL+Fk9PNCT4xEwR6+o+JODn5Z1jnHyfwRToOXiD5EDN/SSnMfSK73ry/cs6kWkb
         saoayt0tVJdLZW+awV4z/BQ4/KMOXCy4yEspG1uUfUp0nJCTEMcbCDfHTDUamDBFFg8V
         56F2KM8YmupMsI/DvLHoLE08j1/Xxoa74ydrr1a1jMTGGtJQafsAwBUD69Mb8RFXJ2z/
         nw0yl/psLIuQ4MXL2ybjKDMPVsXiHRKYj/6rMULqf2o8tz82rcCeHsjrAWfAfoa+ObQD
         5qVQ==
X-Forwarded-Encrypted: i=1; AJvYcCW3EYqnOroyHIP3gY6N9EF7SeAklT2poJ4lMgoCIDGwYVcjC78YURi7CLAK1Brd0JxXM3z0+ceGDbBzY6hilUCUSZT+Q0rzpiJZsbqJXac=
X-Gm-Message-State: AOJu0Yw+M1ktKUG/6TMMIxuFIF+fwNWEjRXv0K7uHj7CU1dtMQnaix4/
	OKO8pvl3xPKrvPEDrtbt6un+bNjBzeXM4+2pb7xaojKUqiIiuHqRl2dwT3DYJj/Yog==
X-Google-Smtp-Source: AGHT+IHHSLqQht8+k7EY6AfB3rbMJpvFsWVF+UqzojkS4iXdaTdaP69THmV9umWbUpansa7zrf2raA==
X-Received: by 2002:a05:651c:207:b0:2ef:22ad:77b5 with SMTP id 38308e7fff4ca-2f039cc448amr10613301fa.29.1721880572931;
        Wed, 24 Jul 2024 21:09:32 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2f03cf55cfasm751491fa.65.2024.07.24.21.09.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jul 2024 21:09:32 -0700 (PDT)
Date: Thu, 25 Jul 2024 07:09:30 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Amirreza Zarrabi <quic_azarrabi@quicinc.com>
Message-ID: <gtdr5s7yih7pjuhpfkjmlu2lflya4heiph4wi446rlbxduqlya@5xfix7dyocli>
References: <20240702-qcom-tee-object-and-ioctls-v1-0-633c3ddf57ee@quicinc.com>
 <20240702-qcom-tee-object-and-ioctls-v1-1-633c3ddf57ee@quicinc.com>
 <ink4tq3wk2jkpybiisaudkun3g2x2drfogrdw43zdpi6yh2u5g@yrvrxzxsi46g>
 <836dab13-9c59-4d87-a600-a0be6506deb2@quicinc.com>
 <CAA8EJprp2veCaQq8GsYv4Mu1HQbx8nWv0XWtxcE4cu5kxkA16w@mail.gmail.com>
 <f9e5ef49-754c-4d97-8186-634674151b2f@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f9e5ef49-754c-4d97-8186-634674151b2f@quicinc.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 47E8142540
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.49 / 15.00];
	BAYES_HAM(-2.99)[99.94%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.181:from];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	URIBL_BLOCKED(0.00)[linaro.org:dkim];
	RCVD_COUNT_TWO(0.00)[2];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: LAP5RLQ3BUF7AMOSZHNKBQIVEK5W3YXN
X-Message-ID-Hash: LAP5RLQ3BUF7AMOSZHNKBQIVEK5W3YXN
X-MailFrom: dmitry.baryshkov@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, srinivas.kandagatla@linaro.org, bartosz.golaszewski@linaro.org, linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 1/3] firmware: qcom: implement object invoke support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LAP5RLQ3BUF7AMOSZHNKBQIVEK5W3YXN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Jul 25, 2024 at 01:19:07PM GMT, Amirreza Zarrabi wrote:
> 
> 
> On 7/4/2024 5:34 PM, Dmitry Baryshkov wrote:
> > On Thu, 4 Jul 2024 at 00:40, Amirreza Zarrabi <quic_azarrabi@quicinc.com> wrote:
> >>
> >>
> >>
> >> On 7/3/2024 10:13 PM, Dmitry Baryshkov wrote:
> >>> On Tue, Jul 02, 2024 at 10:57:36PM GMT, Amirreza Zarrabi wrote:
> >>>> Qualcomm TEE hosts Trusted Applications and Services that run in the
> >>>> secure world. Access to these resources is provided using object
> >>>> capabilities. A TEE client with access to the capability can invoke
> >>>> the object and request a service. Similarly, TEE can request a service
> >>>> from nonsecure world with object capabilities that are exported to secure
> >>>> world.
> >>>>
> >>>> We provide qcom_tee_object which represents an object in both secure
> >>>> and nonsecure world. TEE clients can invoke an instance of qcom_tee_object
> >>>> to access TEE. TEE can issue a callback request to nonsecure world
> >>>> by invoking an instance of qcom_tee_object in nonsecure world.
> >>>
> >>> Please see Documentation/process/submitting-patches.rst on how to write
> >>> commit messages.
> >>
> >> Ack.
> >>
> >>>
> >>>>
> >>>> Any driver in nonsecure world that is interested to export a struct (or a
> >>>> service object) to TEE, requires to embed an instance of qcom_tee_object in
> >>>> the relevant struct and implements the dispatcher function which is called
> >>>> when TEE invoked the service object.
> >>>>
> >>>> We also provids simplified API which implements the Qualcomm TEE transport
> >>>> protocol. The implementation is independent from any services that may
> >>>> reside in nonsecure world.
> >>>
> >>> "also" usually means that it should go to a separate commit.
> >>
> >> I will split this patch to multiple smaller ones.
> >>
> > 
> > [...]
> > 
> >>>
> >>>> +    } in, out;
> >>>> +};
> >>>> +
> >>>> +int qcom_tee_object_do_invoke(struct qcom_tee_object_invoke_ctx *oic,
> >>>> +    struct qcom_tee_object *object, unsigned long op, struct qcom_tee_arg u[], int *result);
> >>>
> >>> What's the difference between a result that gets returned by the
> >>> function and the result that gets retuned via the pointer?
> >>
> >> The function result, is local to kernel, for instance memory allocation failure,
> >> or failure to issue the smc call. The result in pointer, is the remote result,
> >> for instance return value from TA, or the TEE itself.
> >>
> >> I'll use better name, e.g. 'remote_result'?
> > 
> > See how this is handled by other parties. For example, PSCI. If you
> > have a standard set of return codes, translate them to -ESOMETHING in
> > your framework and let everybody else see only the standard errors.
> > 
> > 
> 
> I can not hide this return value, they are TA dependent. The client to a TA
> needs to see it, just knowing that something has failed is not enough in
> case they need to do something based on that. I can not even translate them
> as they are TA related so the range is unknown.

I'd say it a sad design. At least error values should be standard.

-- 
With best wishes
Dmitry
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
